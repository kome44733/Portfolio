class Profession < ApplicationRecord
  has_many :customers
  has_many :questions
  enum professions: { no_experience: 0, sales: 1, planning_management: 2,office_assistant: 3, it_communication_system: 4,manufacturing: 5,civil_construction: 6,material_science_food: 7,medical_care: 8,finance: 9,consultant: 10,service_sales: 11,creative: 12 }
end
