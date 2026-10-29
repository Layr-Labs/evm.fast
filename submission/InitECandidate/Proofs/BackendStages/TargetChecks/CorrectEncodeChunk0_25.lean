import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_858
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_859
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_860
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_861
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_862
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_863
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_864
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_865
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_866
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_867
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_868
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_869
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_870
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_871
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_872
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_873
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_874
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_875
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_876
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_877
import InitECandidate.Proofs.BackendStages.TargetChecks.Composition
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
namespace Phase0.Chunk25
def input : LabSem.LabProgHOL 64 := [Initial858, Initial859, Initial860, Initial861, Initial862, Initial863, Initial864, Initial865, Initial866, Initial867, Initial868, Initial869, Initial870, Initial871, Initial872, Initial873, Initial874, Initial875, Initial876, Initial877]
def output : LabSem.LabProgHOL 64 := [Reencode0_858, Reencode0_859, Reencode0_860, Reencode0_861, Reencode0_862, Reencode0_863, Reencode0_864, Reencode0_865, Reencode0_866, Reencode0_867, Reencode0_868, Reencode0_869, Reencode0_870, Reencode0_871, Reencode0_872, Reencode0_873, Reencode0_874, Reencode0_875, Reencode0_876, Reencode0_877]
theorem encode_append (rest result : LabSem.LabProgHOL 64) (ok : Bool)
 (tail : LabToTarget.encSecsAgain 1072824 Target.labels0 Target.ffis riscvConfig.encode rest = (result, ok)) :
 LabToTarget.encSecsAgain 1029684 Target.labels0 Target.ffis riscvConfig.encode (input ++ rest) = (output ++ result, false && ok) := by
 simpa only [input, output, List.cons_append, List.nil_append, Bool.true_and, Bool.false_and] using
  (section_cons 1029684 1030864 Target.labels0 Target.ffis riscvConfig.encode Initial858 Reencode0_858
   (Initial859 :: Initial860 :: Initial861 :: Initial862 :: Initial863 :: Initial864 :: Initial865 :: Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_859 :: Reencode0_860 :: Reencode0_861 :: Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) true (true && (true && (true && (true && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok)))))))))))))))))))
   (by rfl) Reencode0_858_eq
  (section_cons 1030864 1031184 Target.labels0 Target.ffis riscvConfig.encode Initial859 Reencode0_859
   (Initial860 :: Initial861 :: Initial862 :: Initial863 :: Initial864 :: Initial865 :: Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_860 :: Reencode0_861 :: Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) true (true && (true && (true && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok))))))))))))))))))
   (by rfl) Reencode0_859_eq
  (section_cons 1031184 1033272 Target.labels0 Target.ffis riscvConfig.encode Initial860 Reencode0_860
   (Initial861 :: Initial862 :: Initial863 :: Initial864 :: Initial865 :: Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_861 :: Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) true (true && (true && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok)))))))))))))))))
   (by rfl) Reencode0_860_eq
  (section_cons 1033272 1033912 Target.labels0 Target.ffis riscvConfig.encode Initial861 Reencode0_861
   (Initial862 :: Initial863 :: Initial864 :: Initial865 :: Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_862 :: Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) true (true && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok))))))))))))))))
   (by rfl) Reencode0_861_eq
  (section_cons 1033912 1039604 Target.labels0 Target.ffis riscvConfig.encode Initial862 Reencode0_862
   (Initial863 :: Initial864 :: Initial865 :: Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_863 :: Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) true (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok)))))))))))))))
   (by rfl) Reencode0_862_eq
  (section_cons 1039604 1055776 Target.labels0 Target.ffis riscvConfig.encode Initial863 Reencode0_863
   (Initial864 :: Initial865 :: Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_864 :: Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok))))))))))))))
   (by rfl) Reencode0_863_eq
  (section_cons 1055776 1055968 Target.labels0 Target.ffis riscvConfig.encode Initial864 Reencode0_864
   (Initial865 :: Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_865 :: Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok)))))))))))))
   (by rfl) Reencode0_864_eq
  (section_cons 1055968 1056952 Target.labels0 Target.ffis riscvConfig.encode Initial865 Reencode0_865
   (Initial866 :: Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_866 :: Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok))))))))))))
   (by rfl) Reencode0_865_eq
  (section_cons 1056952 1057428 Target.labels0 Target.ffis riscvConfig.encode Initial866 Reencode0_866
   (Initial867 :: Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_867 :: Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok)))))))))))
   (by rfl) Reencode0_866_eq
  (section_cons 1057428 1060648 Target.labels0 Target.ffis riscvConfig.encode Initial867 Reencode0_867
   (Initial868 :: Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_868 :: Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && (false && (false && (false && ok))))))))))
   (by rfl) Reencode0_867_eq
  (section_cons 1060648 1067960 Target.labels0 Target.ffis riscvConfig.encode Initial868 Reencode0_868
   (Initial869 :: Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_869 :: Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && (false && (false && ok)))))))))
   (by rfl) Reencode0_868_eq
  (section_cons 1067960 1070852 Target.labels0 Target.ffis riscvConfig.encode Initial869 Reencode0_869
   (Initial870 :: Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_870 :: Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && (false && ok))))))))
   (by rfl) Reencode0_869_eq
  (section_cons 1070852 1071100 Target.labels0 Target.ffis riscvConfig.encode Initial870 Reencode0_870
   (Initial871 :: Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_871 :: Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && (false && ok)))))))
   (by rfl) Reencode0_870_eq
  (section_cons 1071100 1071348 Target.labels0 Target.ffis riscvConfig.encode Initial871 Reencode0_871
   (Initial872 :: Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_872 :: Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && (false && ok))))))
   (by rfl) Reencode0_871_eq
  (section_cons 1071348 1071596 Target.labels0 Target.ffis riscvConfig.encode Initial872 Reencode0_872
   (Initial873 :: Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_873 :: Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && (false && ok)))))
   (by rfl) Reencode0_872_eq
  (section_cons 1071596 1071844 Target.labels0 Target.ffis riscvConfig.encode Initial873 Reencode0_873
   (Initial874 :: Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_874 :: Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && (false && ok))))
   (by rfl) Reencode0_873_eq
  (section_cons 1071844 1072092 Target.labels0 Target.ffis riscvConfig.encode Initial874 Reencode0_874
   (Initial875 :: Initial876 :: Initial877 :: rest) (Reencode0_875 :: Reencode0_876 :: Reencode0_877 :: result) false (false && (false && (false && ok)))
   (by rfl) Reencode0_874_eq
  (section_cons 1072092 1072340 Target.labels0 Target.ffis riscvConfig.encode Initial875 Reencode0_875
   (Initial876 :: Initial877 :: rest) (Reencode0_876 :: Reencode0_877 :: result) false (false && (false && ok))
   (by rfl) Reencode0_875_eq
  (section_cons 1072340 1072588 Target.labels0 Target.ffis riscvConfig.encode Initial876 Reencode0_876
   (Initial877 :: rest) (Reencode0_877 :: result) false (false && ok)
   (by rfl) Reencode0_876_eq
  (section_cons 1072588 1072824 Target.labels0 Target.ffis riscvConfig.encode Initial877 Reencode0_877
   (rest) (result) false ok
   (by rfl) Reencode0_877_eq
   tail))))))))))))))))))))
#print axioms encode_append
end Phase0.Chunk25
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
