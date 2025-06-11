/*!
    * Start Bootstrap - SB Admin v7.0.2 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2021 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
    // 
// Scripts
// 

// 全局函数：重置侧边栏自动展开状态
window.resetSidebarAutoExpand = function() {
    document.body.classList.remove('sb-sidenav-auto-expanded');
    document.body.classList.remove('mouse-near-edge');
    if (document.body.getAttribute('data-was-toggled') === 'true') {
        document.body.classList.add('sb-sidenav-toggled');
        document.body.removeAttribute('data-was-toggled');
    }
};

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

    // 侧边栏自动展开/收回功能
    const sidebar = document.body.querySelector('#layoutSidenav_nav');
    let autoExpandTimeout;
    let autoCollapseTimeout;
    
    // 检查页面加载时是否已经处于自动展开状态
    let isAutoExpanded = document.body.classList.contains('sb-sidenav-auto-expanded');
    
    // 页面加载时清理自动展开状态，避免状态不一致
    if (isAutoExpanded) {
        // 如果页面加载时处于自动展开状态，先清理掉，让用户重新触发
        document.body.classList.remove('sb-sidenav-auto-expanded');
        if (document.body.getAttribute('data-was-toggled') === 'true') {
            document.body.classList.add('sb-sidenav-toggled');
            document.body.removeAttribute('data-was-toggled');
        }
        isAutoExpanded = false;
    }
    
    if (sidebar) {
        // 检测是否为移动设备
        const isMobile = window.innerWidth <= 768;
        
        if (!isMobile) {
            // 鼠标移动监听器
            document.addEventListener('mousemove', (event) => {
                const mouseX = event.clientX;
                const triggerZone = 30; // 触发区域宽度（像素）
                const sidebarWidth = 225; // 侧边栏宽度
                const indicatorZone = 60; // 指示器显示区域
                
                // 控制视觉指示器显示
                if (mouseX <= indicatorZone && !isAutoExpanded) {
                    document.body.classList.add('mouse-near-edge');
                } else {
                    document.body.classList.remove('mouse-near-edge');
                }
                
                // 清除之前的定时器
                clearTimeout(autoExpandTimeout);
                clearTimeout(autoCollapseTimeout);
                
                // 如果鼠标在左侧触发区域内且侧边栏当前是隐藏的
                if (mouseX <= triggerZone && !isAutoExpanded) {
                    // 延迟展开，避免误触
                    autoExpandTimeout = setTimeout(() => {
                        if (!isAutoExpanded) {
                            document.body.classList.add('sb-sidenav-auto-expanded');
                            document.body.classList.remove('mouse-near-edge');
                            // 临时移除toggled状态以显示侧边栏
                            const wasToggled = document.body.classList.contains('sb-sidenav-toggled');
                            if (wasToggled) {
                                document.body.classList.remove('sb-sidenav-toggled');
                                document.body.setAttribute('data-was-toggled', 'true');
                            }
                            isAutoExpanded = true;
                        }
                    }, 150);
                } else if (mouseX > sidebarWidth + 20 && isAutoExpanded) {
                    // 如果鼠标离开侧边栏区域，自动收回
                    autoCollapseTimeout = setTimeout(() => {
                        if (isAutoExpanded) {
                            document.body.classList.remove('sb-sidenav-auto-expanded');
                            // 恢复到之前的状态
                            if (document.body.getAttribute('data-was-toggled') === 'true') {
                                document.body.classList.add('sb-sidenav-toggled');
                                document.body.removeAttribute('data-was-toggled');
                            }
                            isAutoExpanded = false;
                        }
                    }, 300);
                }
            });

            // 侧边栏悬停时保持展开
            sidebar.addEventListener('mouseenter', () => {
                clearTimeout(autoCollapseTimeout);
            });

            // 鼠标离开侧边栏时开始收回倒计时
            sidebar.addEventListener('mouseleave', (event) => {
                if (isAutoExpanded) {
                    autoCollapseTimeout = setTimeout(() => {
                        document.body.classList.remove('sb-sidenav-auto-expanded');
                        // 恢复到之前的状态
                        if (document.body.getAttribute('data-was-toggled') === 'true') {
                            document.body.classList.add('sb-sidenav-toggled');
                            document.body.removeAttribute('data-was-toggled');
                        }
                        isAutoExpanded = false;
                    }, 500); // 给用户更多时间返回侧边栏
                }
            });

            // 窗口大小改变时重置状态
            window.addEventListener('resize', () => {
                if (window.innerWidth <= 768 && isAutoExpanded) {
                    document.body.classList.remove('sb-sidenav-auto-expanded');
                    if (document.body.getAttribute('data-was-toggled') === 'true') {
                        document.body.classList.add('sb-sidenav-toggled');
                        document.body.removeAttribute('data-was-toggled');
                    }
                    isAutoExpanded = false;
                }
            });
        }
    }

    // 页面卸载前清理自动展开状态
    window.addEventListener('beforeunload', () => {
        if (isAutoExpanded) {
            document.body.classList.remove('sb-sidenav-auto-expanded');
            if (document.body.getAttribute('data-was-toggled') === 'true') {
                document.body.classList.add('sb-sidenav-toggled');
                document.body.removeAttribute('data-was-toggled');
            }
        }
        // 清理视觉指示器
        document.body.classList.remove('mouse-near-edge');
    });

    // 页面获得焦点时检查状态
    window.addEventListener('focus', () => {
        // 如果检测到状态不一致，重置状态
        const hasAutoExpandClass = document.body.classList.contains('sb-sidenav-auto-expanded');
        if (hasAutoExpandClass && !isAutoExpanded) {
            window.resetSidebarAutoExpand();
            isAutoExpanded = false;
        }
    });

    // 仪表板图表切换功能
    const chartActions = document.querySelectorAll('.btn-chart-action');
    if (chartActions.length > 0) {
        chartActions.forEach(btn => {
            btn.addEventListener('click', function() {
                // 移除所有活动状态
                chartActions.forEach(b => b.classList.remove('active'));
                // 添加当前按钮的活动状态
                this.classList.add('active');
                
                // 这里可以添加实际的图表数据切换逻辑
                const period = this.getAttribute('data-period');
                console.log('切换到时间段:', period);
            });
        });
    }

    // 图表响应式调整
    window.addEventListener('resize', function() {
        // 触发Chart.js的resize方法
        if (window.Chart && window.Chart.instances) {
            Object.values(window.Chart.instances).forEach(chart => {
                if (chart && chart.resize) {
                    chart.resize();
                }
            });
        }
    });

    // 确保图表在DOM完全加载后正确渲染
    setTimeout(function() {
        if (window.Chart && window.Chart.instances) {
            Object.values(window.Chart.instances).forEach(chart => {
                if (chart && chart.resize) {
                    chart.resize();
                }
            });
        }
    }, 100);

});
