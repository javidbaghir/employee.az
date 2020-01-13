package az.employee.repository.jdbc;

public class SqlQuery {
    public static final String CHECK_EMAIL = "select count(id) cnt from user where email = :email and status = 1";

    public static final String ADD_USER = "insert into user(id, name, surname, user_status_id, email, password) " +
            "values(null, :name, :surname, :user_status_id, :email, :password)";

    public static final String ADD_USER_ROLE = "insert into user_role(id, user_id, role_id) " +
            "values(null, :user_id, :role_id)";

    public static final String GET_USER_ROLES = "select r.id, r.name, r.page, r.priority "+
            "from user_role ur join user u on ur.user_id = u.id and ur.status = 1 and u.status = 1 "+
            " join role r on ur.role_id = r.id and r.status = 1 "+
            "where u.id = :user_id " +
            "order by r.priority ";

    public static final String ADD_TOKEN = "insert into token(id, value, generation_date, expire_date, user_id) " +
            "values(null, :token, :generation_date,:expire_date, :user_id)";

    public static final String GET_TOKEN = "select t.id, t.value, t.generation_date, t.expire_date, t.used, " +
            "   t.user_id, t.idate, t.udate, " +
            "   u. u.user_status_id, u.name, u.surname, u.idate user_idate, u.udate user_udate, " +
            "   u.email, u.password " +
            "from token t join user u on t.user_id = u.id and u.status = 1 " +
            "where t.value = :token and t.status = 1";

    public static final String GET_USER_BY_EMAIL = "select id,  name, surname, idate, udate, " +
            "user_status_id, email, password " +
            "from user " +
            "where email = :email and status = 1";

    public static final String GET_USER_BY_TOKEN = "select id,  name, surname, idate, udate, " +
            " user_status_id, email, password " +
            "from user u join token t on u.id = t.user_id " +
            "   and t.value = ? " +
            "    and t.used = 0 " +
            "    and u.status = 1 " +
            "    and t.status = 1";

    public static final String GET_TOTAL_COUNT = "select count(ur.role_id) " +
            "from user u join user_role ur on ur.user_id = u.id " +
            "where ur.role_id = 1 ";

    public static final String GET_FILTER_COUNT = "select count(ur.role_id) " +
            "from user u join user_role ur on ur.user_id = u.id and ur.status = 1 and u.status = 1 " +
            "join candidate c on c.user_id = u.id and c.status = 1 " +
            "join address ad on c.address_id = ad.id and ad.status = 1 " +
            "join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "left join education_level el on c.degree_id = el.id and el.status = 1 " +
            "where ur.role_id = 1 and concat(u.name,u.surname,u.email,ifnull(u.phone,\"\"),ifnull(u.mobile,\"\"),ifnull(c.birth_date,\"\"),ct.name,el.name,ifnull(c.position,\"\")) like :searchWord";

    public static final String GET_JOB_CATEGORY_COUNT = "select jcb.id,jcb.name,jcb.icon_class,count(j.id) job_count " +
            "from job_category jc join job j on j.job_category_id = jc.id and jc.status = 1 " +
            "join job_category jcb on jc.parent_id = jcb.id and jcb.status = 1 " +
            "group by jcb.id,jcb.name,jcb.icon_class  " +
            "order by count(j.id) desc " +
            "limit 5";

    public static final String GET_ALL_JOB_COUNT = "select count(j.id) from job j " +
            "where j.status = 1 ";

    public static final String GET_RECENT_JOB_LIST = "select j.id, j.position, j.about, j.requirement, j.salary_min, j.salary_max, " +
            "   j.post_date, j.deadline,  " +
            "    j.address_id,  " +
            "    a.country_id, cr.name country_name, " +
            "    a.city_id, ct.name city_name, " +
            "    a.info, " +
            "    j.job_type_id, jp.name job_type_name, " +
            "    j.experience_min, j.experience_max, " +
            "    j.job_category_id, jc.name job_category_name, " +
            "    j.idate, j.udate, " +
            "    j.user_id, u.name, u.surname, u.email, u.phone, u.mobile, " +
            "    o.id organization_id, o.name organization_name, " +
            "   o.email org_email, o.phone org_phone, u.mobile org_mobile " +
            "from job j join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "   join job_type jp on j.job_type_id = jp.id and jp.status = 1 " +
            "    join address a on j.address_id = a.id and a.status = 1 " +
            "    join country cr on a.country_id = cr.id and cr.status = 1 " +
            "    join city ct on a.city_id = ct.id and ct.status = 1 " +
            "    join user u on j.user_id = u.id and u.status = 1 " +
            "    left join organization o on j.organization_id = o.id and o.status = 1 " +
            "where j.status = 1 " +
            "order by j.post_date desc " +
            "limit 9 ";

public static final String GET_CANDIDATE_LIST_ADMIN = "select c.id, u.id user_id, u.name, u.surname, u.udate,u.idate,u.user_status_id,u.email,u.password,u.phone,u.mobile, " +
        "c.birth_date, c.profile_image, c.video_file, " +
        "c.address_id, ad.info, " +
        "ad.country_id, cr.name country_name, " +
        "ad.city_id, ct.name city_name, " +
        "c.degree_id, el.name education_level, " +
        "c.position, c.salary_min, c.salary_max, " +
        "c.idate, c.udate " +
        "from user u  join candidate c on c.user_id = u.id and u.status = 1 " +
        "join address ad on c.address_id = ad.id and ad.status = 1 " +
        "join country cr on ad.country_id = cr.id and cr.status = 1 " +
        "join city ct on ad.city_id = ct.id and ct.status = 1 " +
        "left join education_level el on c.degree_id = el.id and el.status = 1 " +
        "join user_role ur on ur.user_id = u.id and ur.status = 1 " +
        "where ur.role_id = 1 and concat(u.name,u.surname,u.email,ifnull(u.phone,\"\"),ifnull(u.mobile,\"\"),ifnull(c.birth_date,\"\"),ct.name,el.name,ifnull(c.position,\"\")) like :searchWord " +
        "order by %s %s "+
        "limit %d, %d ";

public static final String GET_CANDIDATE_LIST_WEB = "select u.id,u.udate,u.name,u.surname,u.user_status_id,u.email,u.password,u.phone,u.mobile, " +
        "c.id candidate_id,c.user_id,c.birth_date,c.profile_image,c.video_file,c.position,c.salary_min,c.salary_max, " +
        "c.address_id,ad.info, " +
        "ad.city_id,ct.name city_name, " +
        "ad.country_id,cr.name country_name, " +
        "c.degree_id,el.name education_level, " +
        "c.idate candidate_idate,c.udate candidate_udate " +
        "from candidate c join user u on c.user_id = u.id and c.status = 1 and u.status = 1 " +
        "join address ad on c.address_id = ad.id and ad.status = 1 " +
        "join country cr on ad.country_id = cr.id and cr.status = 1 " +
        "join city ct on ad.city_id = ct.id and ct.status = 1 " +
        "left join education_level el on c.degree_id = el.id and el.status = 1 " +
        "order by candidate_idate desc " +
        "limit %d, 12 ";

public static final String GET_CANDIDATE_BY_ID = "select u.id, u.udate, u.name, u.surname, u.user_status_id, u.email, u.password, u.phone, u.mobile, " +
        "        c.id candidate_id, c.user_id, c.birth_date, c.profile_image, c.video_file, c.position, c.salary_min, c.salary_max, " +
        "        c.address_id, ad.info, " +
        "        ad.city_id, ct.name city_name, " +
        "        ad.country_id, cr.name country_name, " +
        "        c.degree_id, el.name education_level, " +
        "        c.idate candidate_idate, c.udate candidate_udate " +
        "        from candidate c join user u on c.user_id = u.id and c.status = 1 and u.status = 1 " +
        "        join address ad on c.address_id = ad.id and ad.status = 1 " +
        "        join country cr on ad.country_id = cr.id and cr.status = 1 " +
        "        join city ct on ad.city_id = ct.id and ct.status = 1 " +
        "        left join education_level el on c.degree_id = el.id and el.status = 1 " +
        "        where c.id = :candidate_id ";

    public static final String GET_CANDIDATE_BY_USER_ID = "select u.id, u.udate, u.name, u.surname, u.user_status_id, u.email, u.password, u.phone, u.mobile, " +
            "        c.id candidate_id, c.user_id, c.birth_date, c.profile_image, c.video_file, c.position, c.salary_min, c.salary_max, " +
            "        c.address_id, ad.info, " +
            "        ad.city_id, ct.name city_name, " +
            "        ad.country_id, cr.name country_name, " +
            "        c.degree_id, el.name education_level, " +
            "        c.idate candidate_idate, c.udate candidate_udate " +
            "        from candidate c join user u on c.user_id = u.id and c.status = 1 and u.status = 1 " +
            "        join address ad on c.address_id = ad.id and ad.status = 1 " +
            "        join country cr on ad.country_id = cr.id and cr.status = 1 " +
            "        join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "        left join education_level el on c.degree_id = el.id and el.status = 1 " +
            "        where u.id = :user_id ";


public static final String GET_CANDIDATE_JOB_HISTORY = "select jh.candidate_id," +
        "jh.position, jh.start_date, jh.end_date, " +
        "jh.country_id, cr.name country_name, " +
        "jh.city_id, ct.name city_name, " +
        "jh.company, jh.info " +
        "from candidate c join job_history jh on jh.candidate_id = c.id and jh.status = 1 and c.status = 1 " +
        "join country cr on jh.country_id = cr.id and cr.status = 1 " +
        "join city ct on jh.city_id = ct.id and ct.status = 1 " +
        "where c.user_id = :candidate_id";

    public static final String GET_CANDIDATE_LIST = "select c.id, c.user_id, u.name, u.surname, u.email, u.mobile, u.phone,\n" +
            "\tc.profile_image, c.video_file, c.position, salary_min, salary_max, \n" +
            "    c.address_id, a.country_id, cr.name country_name,\n" +
            "    a.city_id, ct.name city_name, a.info,\n" +
            "    c.birth_date, \n" +
            "    c.degree_id, el.name education_level,\n" +
            "    c.idate, c.udate\n" +
            "from candidate c join user u on c.user_id = u.id and c.status = 1 and u.status = 1\n" +
            "\tjoin address a on c.address_id = a.id and a.status = 1\n" +
            "\tjoin country cr on a.country_id = cr.id and cr.status = 1\n" +
            "    join city ct on a.city_id = ct.id and ct.status = 1\n" +
            "    join education_level el on c.degree_id = el.id and el.status = 1 " +
            "order by c.idate desc " +
            "limit %d, 12";

    public static final String GET_CANDIDATE_COUNT = "select count(id) cnt " +
            "from candidate " +
            "where status = 1";

    public static final String GET_EDUCATION_LIST = "select e.id,  e.candidate_id, eo.name org_name, el.name edu_level_name, e.start_date, e.end_date\n" +
            "from education e join education_level el on e.education_level_id= el.id and e.status = 1 and el.status = 1\n" +
            "\t\tjoin education_org eo on e.education_org_id = eo.id and eo.status = 1\n" +
            "        join candidate c on e.candidate_id = c.id and c.status=1\n" +
            "        join user u on c.user_id = u.id\n" +
            "        where c.user_id = :candidate_id";

    public static final String GET_CERTIFICATE_LIST = "select cer.id, cer.candidate_id, cer.certificate_date, cer.title, cer.organization,\n" +
            "cer.file, cer.idate, cer.udate\n" +
            " from certificate cer join candidate c on cer.candidate_id = c.id and cer.status = 1 and c.status = 1\n" +
            " where c.user_id = :candidate_id ";

    public static final String GET_LANGUAGE_LIST = "select ls.candidate_id, l.name, ls.reading, ls.speaking, ls.writing, ls.listening\n" +
            "from language l join language_skill ls on l.id = ls.language_id and l.status = 1 and ls.status = 1\n" +
            "\t\t\t\tjoin candidate c on c.id = ls.candidate_id and c.status = 1\n" +
            "  where c.user_id = :candidate_id ";

    public static final String GET_TAG_LIST = "select t.id, t.name\n" +
            "from tag_owner tr join candidate c on tr.owner_id = c.id and c.status = 1 and tr.owner_type_id = 2\n" +
            "join tag t on t.id = tr.tag_id and t.status = 1\n" +
            " where c.user_id = :candidate_id";

    public static final String UPDATE_USER = "update user as u\n" +
            "set u.name = :name, u.surname = :surname, u.email = :email\n" +
            "where u.id = :id";

    public static final String GET_COUNTRIES_LIST ="SELECT c.id, c.name FROM employeeaz1.country c where c.status = 1";

    public static final String GET_CITY_LIST_BY_COUNTRY_ID ="SELECT c.id, c.name, c.country_id " +
            "FROM employeeaz1.city c " +
            "where c.status = 1 and c.country_id = :country_id";

    public static final String GET_CANDIDATE_ADDRESS = "select a.id, a.country_id, cr.name country_name, a.city_id, ct.name city_name " +
            "from address a join country cr on a.country_id = cr.id and cr.status = 1 " +
            "   join city ct on a.city_id = ct.id and ct.status = 1" +
            "where a.id = ?";

    public static final String GET_CANDIDATE_LAST_APPLIED_JOB = "select ap.id ap_id, j.id job_id, c.id candidate_id, j.position, jt.id job_type_id, ct.name\n" +
            "from job j join application ap on j.id = ap.job_id and j.status = 1 and ap.status = 1\n" +
            "\tjoin candidate c on c.id = ap.candidate_id and c.status = 1\n" +
            "\tjoin job_type jt on j.job_type_id = jt.id and jt.status = 1\n" +
            "    join address a on j.address_id=a.id and a.status = 1\n" +
            "    join city ct on ct.id = a.city_id and ct.status = 1\n" +
            "    where c.id = :candidate_id\n" +
            "    order by application_date desc\n" +
            "    limit 5";

    public static final String GET_CANDIDATE_APPLIED_JOB = "select ap.id ap_id, j.id job_id, c.id candidate_id, j.position, jt.id job_type_id, ct.name\n" +
            "                        from job j join application ap on j.id = ap.job_id and j.status = 1 and ap.status = 1\n" +
            "                        join candidate c on c.id = ap.candidate_id\n" +
            "                        join job_type jt on j.job_type_id = jt.id and jt.status = 1\n" +
            "                            join address a on j.address_id=a.id and a.status = 1\n" +
            "                            join city ct on ct.id = a.city_id and ct.status = 1\n" +
            "                            where c.id = :candidate_id\n" +
            "                            order by application_date desc" +
            "                            limit %d, 5";

    public static final String GET_APPLICATION_COUNT = "select count(id) cnt\n" +
            "                            from application\n" +
            "                            where status = 1";


    public static final String GET_JOB_DETAILS = "select j.id,  j.position, j.about, j.requirement, j.salary_min, j.salary_max,\n" +
            "             j.job_type_id, j.experience_min, j.experience_max, \n" +
            "            ct.name, o.facebook, o.twitter, o.linkedin, o.instagram\n" +
            "            from job j join address a on j.address_id = a.id and j.status = 1 and a.status = 1\n" +
            "               join city ct on a.city_id = ct.id and ct.status = 1\n" +
            "               join organization o on o.id = j.organization_id\n" +
            "                       where j.id = :id";


    /*select j.id, c.id candidate_id, j.position, jt.id job_type_id, ct.name, ap.application_date
                        from job j join application ap on j.id = ap.job_id and j.status = 1 and ap.status = 1
                        join candidate c on c.id = ap.candidate_id
                        join job_type jt on j.job_type_id = jt.id and jt.status = 1
                            join address a on j.address_id=a.id and a.status = 1
                            join city ct on ct.id = a.city_id and ct.status = 1
                            where c.id = :candidate_id
                            order by application_date desc*/


    public static final String CANCEL_JOB = "update application set status = 0\n" +
            "where id = :id";


    public static final String GET_INTERVIEW_JOBS = "select i.id, i.job_id , o.name comp_name, j.position, i.info, j.salary_min, j.salary_max, ct.name country_name, cy.name city_name, a.info add_info, i.date, jt.id job_type_id\n" +
            "from interview i join job j on j.id = i.job_id and i.status = 1 and j.status = 1\n" +
            "\t\tjoin organization o on o.id = j.organization_id and o.status = 1\n" +
            "\t\tjoin candidate c on c.id = i.candidate_id and c.status = 1\n" +
            "\t\tjoin job_type jt on jt.id = j.job_type_id and jt.status = 1\n" +
            "\t\tjoin address a on a.id = j.address_id and a.status = 1\n" +
            "        join country ct on ct.id = a.country_id and ct.status = 1\n" +
            "        join city cy on cy.id = a.city_id and cy.status = 1\n" +
            "        where c.id = :candidate_id";

    public static final String REJECT_INTERVIEW = "update interview set status = 0\n" +
            " where id = :id";

    public static final String SAVE_CANDIDATE_PROFILE_IMAGE = "update candidate " +
            " set profile_image = :image " +
            " where user_id = :user_id and status = 1 ";

}