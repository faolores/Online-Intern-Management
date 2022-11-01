  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <div class="dropdown">
   	<a href="./" class="brand-link">
       
        <h4 class="text-center p-0 m-0"><b>Internship Head Panel</b></h4>

    </a>
      
    </div>
    <div class="sidebar">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-flat" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item dropdown">
            <a href="./" class="nav-link nav-home">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item dropdown">
            <a href="./login.php?page=subject_list" class="nav-link nav-subject_list">
              <i class="nav-icon fas fa-th-list"></i>
              <p>
                Subjects
              </p>
            </a>
          </li> 
          <li class="nav-item dropdown">
            <a href="./login.php?page=company_list" class="nav-link nav-company_list">
              <i class="nav-icon fas fa-list-alt"></i>
              <p>
                Companies
              </p>
            </a>
          </li> 
          <li class="nav-item dropdown">
            <a href="./login.php?page=academic_list" class="nav-link nav-academic_list">
              <i class="nav-icon fas fa-calendar"></i>
              <p>
                Academic Year
              </p>
            </a>
          </li> 
          <li class="nav-item dropdown">
            <a href="./login.php?page=questionnaire" class="nav-link nav-questionnaire">
              <i class="nav-icon fas fa-file-alt"></i>
              <p>
                Questionnaires
              </p>
            </a>
          </li>
          <li class="nav-item dropdown">
            <a href="./login.php?page=criteria_list" class="nav-link nav-criteria_list">
              <i class="nav-icon fas fa-list-alt"></i>
              <p>
                Evaluation Criteria
              </p>
            </a>
          </li> 
          <li class="nav-item">
            <a href="#" class="nav-link nav-edit_intern">
              <i class="nav-icon fas fa-user-friends"></i>
              <p>
                Interns
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
               
                 
                  <p></p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./login.php?page=intern_list" class="nav-link nav-intern_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link nav-edit_industry_professor">
              <i class="nav-icon fa ion-ios-people-outline"></i>
              <p>
                 Industry Professor
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./login.php?page=new_industry_professor" class="nav-link nav-new_industry_professor tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./login.php?page=industry_professor_list" class="nav-link nav-industry_professor_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a href="./login.php?page=report" class="nav-link nav-report">
              <i class="nav-icon fas fa-list-alt"></i>
              <p>
                Evaluation
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link nav-edit_user">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Users
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./login.php?page=new_user" class="nav-link nav-new_user tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./login.php?page=user_list" class="nav-link nav-user_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      
    </div>
    
  </aside>
  <script>
  	$(document).ready(function(){
      var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
  		var s = '<?php echo isset($_GET['s']) ? $_GET['s'] : '' ?>';
      if(s!='')
        page = page+'_'+s;
  		if($('.nav-link.nav-'+page).length > 0){
             $('.nav-link.nav-'+page).addClass('active')
  			if($('.nav-link.nav-'+page).hasClass('tree-item') == true){
            $('.nav-link.nav-'+page).closest('.nav-treeview').siblings('a').addClass('active')
  				$('.nav-link.nav-'+page).closest('.nav-treeview').parent().addClass('menu-open')
  			}
        if($('.nav-link.nav-'+page).hasClass('nav-is-tree') == true){
          $('.nav-link.nav-'+page).parent().addClass('menu-open')
        }

  		}
     
  	})
  </script>