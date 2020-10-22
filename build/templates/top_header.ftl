<div class="row border-bottom" style="background: #184890 !important">		
 	<#--  <#if getterUtil.getBoolean(theme_settings['white-top-header']!"", false) == true>
 		<nav class="navbar navbar-static-top  white-bg" role="navigation" style="margin-bottom: 0;  z-index: 111;">
 	<#else>
 		<nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0;  z-index: 111;">
 	</#if>
    
        <div class="navbar-header navbar-search">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " id="btnClose" href="#"><i class="fa fa-bars"></i> </a>
            
            <div class="navbar-form-custom" role="search"> <@liferay.search /></div>
        </div>
        <div class="header-right right">
        
        <ul class="nav navbar-top-links navbar-right" style="border: 1px;">
        	<li>
                <span class="m-r-sm text-muted welcome-message">Welcome to ${company_name}.</span>
            </li>
            <#if !is_signed_in>
            	<#if getterUtil.getString(theme_settings['login-page']!"", "") == "">
					<li><a data-redirect="false" href="${sign_in_url}" rel="nofollow" id="sign-in">${sign_in_text}</a></li>
				<#else>
					<li><a data-redirect="true" href="${getterUtil.getString(theme_settings['login-page']!"", "")}" rel="nofollow" id="sign-in">${sign_in_text}</a></li>
				</#if>
            </#if>
            
            <#if getterUtil.getBoolean(theme_settings['display-right-sidebar-toggle']!"", false) == true>
            	<li>
					<a class="right-sidebar-toggle">
				         <i class="fa fa-tasks"></i>
				     </a>
				</li>
			</#if>

        </ul>
		<#if getterUtil.getBoolean(theme_settings['show-language-choice']!"", false) ==true>
			<div class="clearfix"> </div>
            <div id="Language-choices">
            	<#if taglibLiferay??>
					${taglibLiferay.language("fm",null,"_82_languageId",0)}
				</#if>
			</div>
		</#if>
		 </div>
        </nav>  -->

	<div class="header confia-virtual-color header-full max-width" style="padding-bottom: 0px;">
		<#--  <div>
			<a href="#default" class="logo">
				<img class="header-logo" src="${themeDisplay.getPathThemeRoot()}/images/confia-virtual_completo.png" alt="Afiliado" title="Afiliado">
			</a>
			<div>
				<label for="toggle-1" class="toggle-menu fa fa-bars navigator-float-label" style="color:#50D7F9; font-size:50px; padding-right: 15px;">
				</label>
				<input type="checkbox" id="toggle-1" class="navigator-float-check">


				<nav class="navigator-float">
				<ul class="navigator-float-wrapper">
					<li class="navigator-float-item"><a href="#logo">Home</a></li>
					<li class="navigator-float-item"><a href="#about"></i>About</a></li>
					<li class="navigator-float-item"><a href="#portfolio"><i class="fa fa-thumb-tack"></i>Portfolio</a></li>
					<li><a href="#services"><i class="fa fa-gears"></i>Services</a></li>
					<li><a href="#gallery"><i class="fa fa-picture-o"></i>Gallery</a></li>
					<li><a href="#contact"><i class="fa fa-phone"></i>Contact</a></li>
				</ul>
				</nav>

			</div>
		</div>  -->

		<div class="response-main-width" style="width: 190px; float: left;">
			<div class="row logo-desktop-responsive">
				<div class="col-12" style="padding: 0px;height: 80px;width: 160px;">
					<a href="#default" class="logo">
						<img class="header-logo" src="${themeDisplay.getPathThemeRoot()}/images/confia-virtual_completo.png" alt="Afiliado" title="Afiliado">
					</a>
				</div>
			</div>


				<div class="profile-element text-right"> 
					<div class="row justify-content-start">
							<div>
								<label for="toggle-1" class="toggle-menu fa fa-bars navigator-float-label d-flex justify-content-center align-items-center" style="color:#50D7F9; font-size:50px;">
									<span style="color:#50D7F9;font-size: 25px;font-family: roboto; margin-left: 10px">Menú</span>
								</label>
								<input type="checkbox" id="toggle-1" class="navigator-float-check">


								<nav class="navigator-float">
								<#--  <ul class="navigator-float-wrapper">
									<li class="navigator-float-item"><a href="#logo">Home</a></li>
									<li class="navigator-float-item"><a href="#about"></i>About</a></li>
									<li class="navigator-float-item"><a href="#portfolio"><i class="fa fa-thumb-tack"></i>Portfolio</a></li>
									<li><a href="#services"><i class="fa fa-gears"></i>Services</a></li>
									<li><a href="#gallery"><i class="fa fa-picture-o"></i>Gallery</a></li>
									<li><a href="#contact"><i class="fa fa-phone"></i>Contact</a></li>
								</ul>  -->
								

								<ul class="navigator-float-wrapper">
								<#if nav_items??>
									<#list nav_items as nav_item>
										<#assign nav_item_attr_has_popup="" />
										<#assign nav_item_attr_selected="" />
										<#assign nav_item_css_class = "" />
						
										<#if  nav_item.isSelected()>
											<#assign nav_item_attr_selected="aria-selected='true'" />
											<#assign nav_item_css_class = "active" />
										</#if>
										
										
										<#if ! nav_item.hasChildren()>
											<li class="${nav_item_css_class} navigator-float-item" id="layout_${nav_item.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
												<a aria-expanded="false" role="button" aria-labelledby="layout_${nav_item.getLayoutId()}" href="${nav_item.getURL()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} >
													<span class="nav-label">${nav_item.getName()}</span>
												</a>
												<img class="navigator-logo-item" src="${themeDisplay.getPathThemeRoot()}/images/logo-confia-menu-escritorio.png" alt="logo-confia-menu-item" title="logo-confia-item">
													<div aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} aria-expanded="false" role="button" href="#" class="dropdown-toggle sub-item-menu-dropdown" data-toggle="dropdown">
														<span class="class-button-menu-item" style="background-image: url(${themeDisplay.getPathThemeRoot()}/images/icon-sub-menu.png) !important;margin: auto 0px;"></span>
													</div>
											</li>
										<#else>
											<li class="${nav_item_css_class} dropdown navigator-float-item" id="layout_${nav_item.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
												<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown">
													<span class="nav-label">${nav_item.getName()}</span>
													
												</a>
												<img class="navigator-logo-item" src="${themeDisplay.getPathThemeRoot()}/images/logo-confia-menu-escritorio.png" alt="logo-confia-menu-item" title="logo-confia-item">
													<div aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} aria-expanded="false" role="button" href="#" class="dropdown-toggle sub-item-menu-dropdown" data-toggle="dropdown">
														<span class="class-button-menu-item" style="background-image: url(${themeDisplay.getPathThemeRoot()}/images/icon-sub-menu.png) !important; margin: auto 0px;"></span>
													</div>
												<ul role="menu" class="dropdown-menu">
													<#list nav_item.getChildren() as nav_child>
														<li>
															<#if  (!nav_child.hasChildren())>
																<a href="${nav_child.getURL()}" style="width: auto !important;"> ${nav_child.getName()} </a>
															<#else>
																<a href="${nav_child.getURL()}" > ${nav_child.getName()} <span class="fa arrow"></span> </a>
																<ul class="nav nav-third-level">
																	<#list nav_child.getChildren() as nav_child3 >
																		<li><a href="${nav_child3.getURL()}">${nav_child3.getName()}</a></li>
																	</#list>
																</ul>
															</#if>
														</li>
													</#list>
												</ul>
											</li>
										</#if>		
									</#list>
								</#if>		
							<#if ! is_signed_in>
								<li><a data-redirect="false" href="${sign_in_url}" rel="nofollow" id="sign-in">${sign_in_text}</a></li>
							</#if>
							</ul>
							</nav>
						</div>
				
	
					</div>
				</div>
		</div>

		<div class="header-right header-confia">
			<div class="row">
				<div class="col-12" style="padding: 0px;">
					<a href="https://www.confia.com.sv/" target="_blank" style="padding-top: 0px;">
						<button type="button" class="white-button btn btn-lg btn-block">
							<div class="text-button-div">
								CAMBIAR CLAVE
							</div>
						</button>
					</a>
					<a href="https://www.confia.com.sv/" target="_blank" style="padding-top: 0px; padding-left: 0px;">
						<button type="button" class="white-button btn btn-lg btn-block">
							<div class="text-button-div">
								CONTÁCTANOS
							</div>
						</button>
					</a>
					<a data-redirect="false" href="${sign_out_url}" style="padding: 0px;">
						<button type="button" class="white-button btn btn-lg btn-block">
							<div class="text-button-div get-out-session">
								${sign_out_text}
							</div>
						</button>
					</a>
				</div>
			</div>

			<#if (is_signed_in)>
				<div class="profile-element text-right mt-3"> 
					<div class="row justify-content-end">
						<div class="col-6">
							<span class="clear text-user-header"> 
								<span class="block m-t-xs"> <strong class="font-bold">${user.getFullName()}</strong></span> 
								<span class="text-muted text-xs block">${user.getJobTitle()}</span>
							</span>
						</div>					
						<div class="">
							<span><img alt="image" class="img-circle img-user-info" src="${themeDisplay.getPathThemeRoot()}/images/iconoPerfil.png" /></span>
						</div>
					</div>
				</div>
	        </#if>
		</div>
		<div class="row logo-mobile-responsive">
				<div class="col-12 logo-mobile-responsive-img" style="padding: 0px;height: 80px;width: 160px;">
					<a href="#default" class="logo-mobile-header">
						<img class="header-logo" src="${themeDisplay.getPathThemeRoot()}/images/confia-virtual_completo.png" alt="Afiliado" title="Afiliado">
					</a>
				</div>
			</div>
	</div>
</div>
