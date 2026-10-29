import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_858
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_859
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_860
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_861
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_862
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_863
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_864
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_865
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_866
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_867
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_868
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_869
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_870
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_871
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_872
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_873
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_874
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_875
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_876
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_877
import InitECandidate.Proofs.BackendStages.TargetChecks.Composition
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
namespace Phase1.Chunk25
def input : LabSem.LabProgHOL 64 := [Reencode0_858, Reencode0_859, Reencode0_860, Reencode0_861, Reencode0_862, Reencode0_863, Reencode0_864, Reencode0_865, Reencode0_866, Reencode0_867, Reencode0_868, Reencode0_869, Reencode0_870, Reencode0_871, Reencode0_872, Reencode0_873, Reencode0_874, Reencode0_875, Reencode0_876, Reencode0_877]
def output : LabSem.LabProgHOL 64 := [Reencode1_858, Reencode1_859, Reencode1_860, Reencode1_861, Reencode1_862, Reencode1_863, Reencode1_864, Reencode1_865, Reencode1_866, Reencode1_867, Reencode1_868, Reencode1_869, Reencode1_870, Reencode1_871, Reencode1_872, Reencode1_873, Reencode1_874, Reencode1_875, Reencode1_876, Reencode1_877]
theorem encode_append (rest result : LabSem.LabProgHOL 64) (ok : Bool)
 (tail : LabToTarget.encSecsAgain 1072824 Target.labels1 Target.ffis riscvConfig.encode rest = (result, ok)) :
 LabToTarget.encSecsAgain 1029684 Target.labels1 Target.ffis riscvConfig.encode (input ++ rest) = (output ++ result, true && ok) := by
 simpa only [input, output, List.cons_append, List.nil_append, Bool.true_and, Bool.false_and] using
  (section_cons 1029684 1030864 Target.labels1 Target.ffis riscvConfig.encode Reencode0_858 Reencode1_858
   (Reencode0_859 :: Reencode0_860 :: Reencode0_861 :: Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_859 :: Reencode1_860 :: Reencode1_861 :: Reencode1_862 :: Reencode1_863 :: Reencode1_864 :: Reencode1_865 :: Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok)))))))))))))))))))
   (by rfl) Reencode1_858_eq
  (section_cons 1030864 1031184 Target.labels1 Target.ffis riscvConfig.encode Reencode0_859 Reencode1_859
   (Reencode0_860 :: Reencode0_861 :: Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_860 :: Reencode1_861 :: Reencode1_862 :: Reencode1_863 :: Reencode1_864 :: Reencode1_865 :: Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok))))))))))))))))))
   (by rfl) Reencode1_859_eq
  (section_cons 1031184 1033272 Target.labels1 Target.ffis riscvConfig.encode Reencode0_860 Reencode1_860
   (Reencode0_861 :: Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_861 :: Reencode1_862 :: Reencode1_863 :: Reencode1_864 :: Reencode1_865 :: Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok)))))))))))))))))
   (by rfl) Reencode1_860_eq
  (section_cons 1033272 1033912 Target.labels1 Target.ffis riscvConfig.encode Reencode0_861 Reencode1_861
   (Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_862 :: Reencode1_863 :: Reencode1_864 :: Reencode1_865 :: Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok))))))))))))))))
   (by rfl) Reencode1_861_eq
  (section_cons 1033912 1039604 Target.labels1 Target.ffis riscvConfig.encode Reencode0_862 Reencode1_862
   (Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_863 :: Reencode1_864 :: Reencode1_865 :: Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok)))))))))))))))
   (by rfl) Reencode1_862_eq
  (section_cons 1039604 1055776 Target.labels1 Target.ffis riscvConfig.encode Reencode0_863 Reencode1_863
   (Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_864 :: Reencode1_865 :: Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok))))))))))))))
   (by rfl) Reencode1_863_eq
  (section_cons 1055776 1055968 Target.labels1 Target.ffis riscvConfig.encode Reencode0_864 Reencode1_864
   (Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_865 :: Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok)))))))))))))
   (by rfl) Reencode1_864_eq
  (section_cons 1055968 1056952 Target.labels1 Target.ffis riscvConfig.encode Reencode0_865 Reencode1_865
   (Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_866 :: Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok))))))))))))
   (by rfl) Reencode1_865_eq
  (section_cons 1056952 1057428 Target.labels1 Target.ffis riscvConfig.encode Reencode0_866 Reencode1_866
   (Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_867 :: Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok)))))))))))
   (by rfl) Reencode1_866_eq
  (section_cons 1057428 1060648 Target.labels1 Target.ffis riscvConfig.encode Reencode0_867 Reencode1_867
   (Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_868 :: Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && (true && ok))))))))))
   (by rfl) Reencode1_867_eq
  (section_cons 1060648 1067960 Target.labels1 Target.ffis riscvConfig.encode Reencode0_868 Reencode1_868
   (Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_869 :: Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && (true && ok)))))))))
   (by rfl) Reencode1_868_eq
  (section_cons 1067960 1070852 Target.labels1 Target.ffis riscvConfig.encode Reencode0_869 Reencode1_869
   (Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_870 :: Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && (true && ok))))))))
   (by rfl) Reencode1_869_eq
  (section_cons 1070852 1071100 Target.labels1 Target.ffis riscvConfig.encode Reencode0_870 Reencode1_870
   (Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_871 :: Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && (true && ok)))))))
   (by rfl) Reencode1_870_eq
  (section_cons 1071100 1071348 Target.labels1 Target.ffis riscvConfig.encode Reencode0_871 Reencode1_871
   (Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_872 :: Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && (true && ok))))))
   (by rfl) Reencode1_871_eq
  (section_cons 1071348 1071596 Target.labels1 Target.ffis riscvConfig.encode Reencode0_872 Reencode1_872
   (Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_873 :: Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && (true && ok)))))
   (by rfl) Reencode1_872_eq
  (section_cons 1071596 1071844 Target.labels1 Target.ffis riscvConfig.encode Reencode0_873 Reencode1_873
   (Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_874 :: Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && (true && ok))))
   (by rfl) Reencode1_873_eq
  (section_cons 1071844 1072092 Target.labels1 Target.ffis riscvConfig.encode Reencode0_874 Reencode1_874
   (Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_875 :: Reencode1_876 :: Reencode1_877 :: result) true (true && (true && (true && ok)))
   (by rfl) Reencode1_874_eq
  (section_cons 1072092 1072340 Target.labels1 Target.ffis riscvConfig.encode Reencode0_875 Reencode1_875
   (Reencode0_876 :: Reencode0_877 :: rest) (Reencode1_876 :: Reencode1_877 :: result) true (true && (true && ok))
   (by rfl) Reencode1_875_eq
  (section_cons 1072340 1072588 Target.labels1 Target.ffis riscvConfig.encode Reencode0_876 Reencode1_876
   (Reencode0_877 :: rest) (Reencode1_877 :: result) true (true && ok)
   (by rfl) Reencode1_876_eq
  (section_cons 1072588 1072824 Target.labels1 Target.ffis riscvConfig.encode Reencode0_877 Reencode1_877
   (rest) (result) true ok
   (by rfl) Reencode1_877_eq
   tail))))))))))))))))))))
#print axioms encode_append
end Phase1.Chunk25
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
