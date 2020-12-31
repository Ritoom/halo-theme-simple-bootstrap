<#--主页的用户信息ok-->
<section id="profile" class="mt-4 bg-white d-xl-block d-none" style="position: fixed;">
    <div class="card border-light">
        <div class="card-body d-flex flex-column align-items-center">
            <#--头像和个人信息-->
            <div class="mt-4 mb-4point5 w-100 d-flex justify-content-center">
                <#--头像部分-->
                <div class="w-50 text-right mr-3">
                    <i style="display: inline-block;
                            width: 6.5rem; height: 6.5rem;
                            background-image: url('${user.avatar!}');
                            background-size: cover;"
                       class="rounded-circle"></i>
                </div>
                <#--个人信息部分-->
                <div class="w-50 text-left ml-3 d-flex flex-column justify-content-center">
                    <span class="h4 d-block">${user.nickname!}</span>
                    <#if (settings.user_location)?? && settings.user_location?trim != ''>
                        <span class="text-muted text-truncate">
                            <i class="fas fa-map-marker-alt mr-1"></i>
                            ${settings.user_location!}
                        </span>
                    </#if>
                </div>
            </div>

        </div>

        <div class="mb-4 mt-n2">
            <#if (user.description)?? && user.description?trim != ''>
                <span class="d-block text-center text-muted px-3">${user.description!}</span>
            </#if>
        </div>

    </div>
</section>