using System;

namespace ElearningPortal.Entity
	{
		public class CourseDetail
		{
			public string course { get; set; }
			public string courseContent { get; set; }
			public string lectures { get; set; }
			public string sessionTime { get; set; }
			public CourseDetail(string course, string courseContent, string lectures, string sessionTime)
			{
				this.course = course;
				this.courseContent = courseContent;
				this.lectures = lectures;
				this.sessionTime = sessionTime;
			}

		public CourseDetail()
		{
		}
	}
	}


