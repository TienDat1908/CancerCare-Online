# frozen_string_literal: true

module AdminUsers
  class MedicalRecordsController < BaseController
    def index
      @q = MedicalRecord.ransack(params[:q])
      @medical_records = @q.result.order(created_at: :desc).page(params[:page]).per(12)
    end

    def content_medical_record
      @medical_record = MedicalRecord.find(params[:id])
      @user = @medical_record.user
      @cancers = @medical_record.cancers
      @cancer_stages = @medical_record.cancer_stages
      @cancer_risk_factors = @medical_record.cancer_risk_factors
      @prescriptions = @medical_record.prescriptions
      @symptoms = @medical_record.symptoms
      @treatments = @medical_record.treatments
    end
  end
end
