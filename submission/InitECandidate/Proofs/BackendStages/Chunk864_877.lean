import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function864
import InitECandidate.Proofs.BackendStages.Function865
import InitECandidate.Proofs.BackendStages.Function866
import InitECandidate.Proofs.BackendStages.Function867
import InitECandidate.Proofs.BackendStages.Function868
import InitECandidate.Proofs.BackendStages.Function869
import InitECandidate.Proofs.BackendStages.Function870
import InitECandidate.Proofs.BackendStages.Function871
import InitECandidate.Proofs.BackendStages.Function872
import InitECandidate.Proofs.BackendStages.Function873
import InitECandidate.Proofs.BackendStages.Function874
import InitECandidate.Proofs.BackendStages.Function875
import InitECandidate.Proofs.BackendStages.Function876
import InitECandidate.Proofs.BackendStages.Function877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk864_877
def programs878 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies878 : List (Nat × StackLang.HolProg 64) := []
def frames878 : List Nat := []
def after878 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled878_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs878 (bitmapPrefix, 4603) = (bodies878, frames878, after878 bitmapPrefix, 4603) := by rfl
def step877 (bitmapPrefix : AppList (BitVec 64)) := (function877 bitmapPrefix).2.2.1
def programs877 := (877, StackAnalysis.optimized877.2.1, StackAnalysis.optimized877.2.2) :: programs878
def bodies877 := (877, stackBody877_88) :: bodies878
def frames877 := 3 :: frames878
def after877 (bitmapPrefix : AppList (BitVec 64)) := after878 (step877 bitmapPrefix)
theorem compiled877_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs877 (bitmapPrefix, 4602) = (bodies877, frames877, after877 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 877 StackAnalysis.optimized877.2.1 StackAnalysis.optimized877.2.2 programs878 (bitmapPrefix, 4602) (step877 bitmapPrefix, 4603) (after878 (step877 bitmapPrefix), 4603) stackBody877_88 3 bodies878 frames878 (function877_eq bitmapPrefix) (compiled878_eq (step877 bitmapPrefix))
def step876 (bitmapPrefix : AppList (BitVec 64)) := (function876 bitmapPrefix).2.2.1
def programs876 := (876, StackAnalysis.optimized876.2.1, StackAnalysis.optimized876.2.2) :: programs877
def bodies876 := (876, stackBody876_82) :: bodies877
def frames876 := 2 :: frames877
def after876 (bitmapPrefix : AppList (BitVec 64)) := after877 (step876 bitmapPrefix)
theorem compiled876_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs876 (bitmapPrefix, 4601) = (bodies876, frames876, after876 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 876 StackAnalysis.optimized876.2.1 StackAnalysis.optimized876.2.2 programs877 (bitmapPrefix, 4601) (step876 bitmapPrefix, 4602) (after877 (step876 bitmapPrefix), 4603) stackBody876_82 2 bodies877 frames877 (function876_eq bitmapPrefix) (compiled877_eq (step876 bitmapPrefix))
def step875 (bitmapPrefix : AppList (BitVec 64)) := (function875 bitmapPrefix).2.2.1
def programs875 := (875, StackAnalysis.optimized875.2.1, StackAnalysis.optimized875.2.2) :: programs876
def bodies875 := (875, stackBody875_82) :: bodies876
def frames875 := 2 :: frames876
def after875 (bitmapPrefix : AppList (BitVec 64)) := after876 (step875 bitmapPrefix)
theorem compiled875_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs875 (bitmapPrefix, 4600) = (bodies875, frames875, after875 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 875 StackAnalysis.optimized875.2.1 StackAnalysis.optimized875.2.2 programs876 (bitmapPrefix, 4600) (step875 bitmapPrefix, 4601) (after876 (step875 bitmapPrefix), 4603) stackBody875_82 2 bodies876 frames876 (function875_eq bitmapPrefix) (compiled876_eq (step875 bitmapPrefix))
def step874 (bitmapPrefix : AppList (BitVec 64)) := (function874 bitmapPrefix).2.2.1
def programs874 := (874, StackAnalysis.optimized874.2.1, StackAnalysis.optimized874.2.2) :: programs875
def bodies874 := (874, stackBody874_82) :: bodies875
def frames874 := 2 :: frames875
def after874 (bitmapPrefix : AppList (BitVec 64)) := after875 (step874 bitmapPrefix)
theorem compiled874_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs874 (bitmapPrefix, 4599) = (bodies874, frames874, after874 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 874 StackAnalysis.optimized874.2.1 StackAnalysis.optimized874.2.2 programs875 (bitmapPrefix, 4599) (step874 bitmapPrefix, 4600) (after875 (step874 bitmapPrefix), 4603) stackBody874_82 2 bodies875 frames875 (function874_eq bitmapPrefix) (compiled875_eq (step874 bitmapPrefix))
def step873 (bitmapPrefix : AppList (BitVec 64)) := (function873 bitmapPrefix).2.2.1
def programs873 := (873, StackAnalysis.optimized873.2.1, StackAnalysis.optimized873.2.2) :: programs874
def bodies873 := (873, stackBody873_82) :: bodies874
def frames873 := 2 :: frames874
def after873 (bitmapPrefix : AppList (BitVec 64)) := after874 (step873 bitmapPrefix)
theorem compiled873_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs873 (bitmapPrefix, 4598) = (bodies873, frames873, after873 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 873 StackAnalysis.optimized873.2.1 StackAnalysis.optimized873.2.2 programs874 (bitmapPrefix, 4598) (step873 bitmapPrefix, 4599) (after874 (step873 bitmapPrefix), 4603) stackBody873_82 2 bodies874 frames874 (function873_eq bitmapPrefix) (compiled874_eq (step873 bitmapPrefix))
def step872 (bitmapPrefix : AppList (BitVec 64)) := (function872 bitmapPrefix).2.2.1
def programs872 := (872, StackAnalysis.optimized872.2.1, StackAnalysis.optimized872.2.2) :: programs873
def bodies872 := (872, stackBody872_82) :: bodies873
def frames872 := 2 :: frames873
def after872 (bitmapPrefix : AppList (BitVec 64)) := after873 (step872 bitmapPrefix)
theorem compiled872_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs872 (bitmapPrefix, 4597) = (bodies872, frames872, after872 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 872 StackAnalysis.optimized872.2.1 StackAnalysis.optimized872.2.2 programs873 (bitmapPrefix, 4597) (step872 bitmapPrefix, 4598) (after873 (step872 bitmapPrefix), 4603) stackBody872_82 2 bodies873 frames873 (function872_eq bitmapPrefix) (compiled873_eq (step872 bitmapPrefix))
def step871 (bitmapPrefix : AppList (BitVec 64)) := (function871 bitmapPrefix).2.2.1
def programs871 := (871, StackAnalysis.optimized871.2.1, StackAnalysis.optimized871.2.2) :: programs872
def bodies871 := (871, stackBody871_82) :: bodies872
def frames871 := 2 :: frames872
def after871 (bitmapPrefix : AppList (BitVec 64)) := after872 (step871 bitmapPrefix)
theorem compiled871_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs871 (bitmapPrefix, 4596) = (bodies871, frames871, after871 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 871 StackAnalysis.optimized871.2.1 StackAnalysis.optimized871.2.2 programs872 (bitmapPrefix, 4596) (step871 bitmapPrefix, 4597) (after872 (step871 bitmapPrefix), 4603) stackBody871_82 2 bodies872 frames872 (function871_eq bitmapPrefix) (compiled872_eq (step871 bitmapPrefix))
def step870 (bitmapPrefix : AppList (BitVec 64)) := (function870 bitmapPrefix).2.2.1
def programs870 := (870, StackAnalysis.optimized870.2.1, StackAnalysis.optimized870.2.2) :: programs871
def bodies870 := (870, stackBody870_82) :: bodies871
def frames870 := 2 :: frames871
def after870 (bitmapPrefix : AppList (BitVec 64)) := after871 (step870 bitmapPrefix)
theorem compiled870_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs870 (bitmapPrefix, 4595) = (bodies870, frames870, after870 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 870 StackAnalysis.optimized870.2.1 StackAnalysis.optimized870.2.2 programs871 (bitmapPrefix, 4595) (step870 bitmapPrefix, 4596) (after871 (step870 bitmapPrefix), 4603) stackBody870_82 2 bodies871 frames871 (function870_eq bitmapPrefix) (compiled871_eq (step870 bitmapPrefix))
def step869 (bitmapPrefix : AppList (BitVec 64)) := (function869 bitmapPrefix).2.2.1
def programs869 := (869, StackAnalysis.optimized869.2.1, StackAnalysis.optimized869.2.2) :: programs870
def bodies869 := (869, stackBody869_1303) :: bodies870
def frames869 := 11 :: frames870
def after869 (bitmapPrefix : AppList (BitVec 64)) := after870 (step869 bitmapPrefix)
theorem compiled869_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs869 (bitmapPrefix, 4581) = (bodies869, frames869, after869 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 869 StackAnalysis.optimized869.2.1 StackAnalysis.optimized869.2.2 programs870 (bitmapPrefix, 4581) (step869 bitmapPrefix, 4595) (after870 (step869 bitmapPrefix), 4603) stackBody869_1303 11 bodies870 frames870 (function869_eq bitmapPrefix) (compiled870_eq (step869 bitmapPrefix))
def step868 (bitmapPrefix : AppList (BitVec 64)) := (function868 bitmapPrefix).2.2.1
def programs868 := (868, StackAnalysis.optimized868.2.1, StackAnalysis.optimized868.2.2) :: programs869
def bodies868 := (868, stackBody868_2949) :: bodies869
def frames868 := 14 :: frames869
def after868 (bitmapPrefix : AppList (BitVec 64)) := after869 (step868 bitmapPrefix)
theorem compiled868_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs868 (bitmapPrefix, 4541) = (bodies868, frames868, after868 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 868 StackAnalysis.optimized868.2.1 StackAnalysis.optimized868.2.2 programs869 (bitmapPrefix, 4541) (step868 bitmapPrefix, 4581) (after869 (step868 bitmapPrefix), 4603) stackBody868_2949 14 bodies869 frames869 (function868_eq bitmapPrefix) (compiled869_eq (step868 bitmapPrefix))
def step867 (bitmapPrefix : AppList (BitVec 64)) := (function867 bitmapPrefix).2.2.1
def programs867 := (867, StackAnalysis.optimized867.2.1, StackAnalysis.optimized867.2.2) :: programs868
def bodies867 := (867, stackBody867_1378) :: bodies868
def frames867 := 14 :: frames868
def after867 (bitmapPrefix : AppList (BitVec 64)) := after868 (step867 bitmapPrefix)
theorem compiled867_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs867 (bitmapPrefix, 4526) = (bodies867, frames867, after867 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 867 StackAnalysis.optimized867.2.1 StackAnalysis.optimized867.2.2 programs868 (bitmapPrefix, 4526) (step867 bitmapPrefix, 4541) (after868 (step867 bitmapPrefix), 4603) stackBody867_1378 14 bodies868 frames868 (function867_eq bitmapPrefix) (compiled868_eq (step867 bitmapPrefix))
def step866 (bitmapPrefix : AppList (BitVec 64)) := (function866 bitmapPrefix).2.2.1
def programs866 := (866, StackAnalysis.optimized866.2.1, StackAnalysis.optimized866.2.2) :: programs867
def bodies866 := (866, stackBody866_198) :: bodies867
def frames866 := 5 :: frames867
def after866 (bitmapPrefix : AppList (BitVec 64)) := after867 (step866 bitmapPrefix)
theorem compiled866_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs866 (bitmapPrefix, 4524) = (bodies866, frames866, after866 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 866 StackAnalysis.optimized866.2.1 StackAnalysis.optimized866.2.2 programs867 (bitmapPrefix, 4524) (step866 bitmapPrefix, 4526) (after867 (step866 bitmapPrefix), 4603) stackBody866_198 5 bodies867 frames867 (function866_eq bitmapPrefix) (compiled867_eq (step866 bitmapPrefix))
def step865 (bitmapPrefix : AppList (BitVec 64)) := (function865 bitmapPrefix).2.2.1
def programs865 := (865, StackAnalysis.optimized865.2.1, StackAnalysis.optimized865.2.2) :: programs866
def bodies865 := (865, stackBody865_441) :: bodies866
def frames865 := 7 :: frames866
def after865 (bitmapPrefix : AppList (BitVec 64)) := after866 (step865 bitmapPrefix)
theorem compiled865_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs865 (bitmapPrefix, 4520) = (bodies865, frames865, after865 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 865 StackAnalysis.optimized865.2.1 StackAnalysis.optimized865.2.2 programs866 (bitmapPrefix, 4520) (step865 bitmapPrefix, 4524) (after866 (step865 bitmapPrefix), 4603) stackBody865_441 7 bodies866 frames866 (function865_eq bitmapPrefix) (compiled866_eq (step865 bitmapPrefix))
def step864 (bitmapPrefix : AppList (BitVec 64)) := (function864 bitmapPrefix).2.2.1
def programs864 := (864, StackAnalysis.optimized864.2.1, StackAnalysis.optimized864.2.2) :: programs865
def bodies864 := (864, stackBody864_60) :: bodies865
def frames864 := 2 :: frames865
def after864 (bitmapPrefix : AppList (BitVec 64)) := after865 (step864 bitmapPrefix)
theorem compiled864_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs864 (bitmapPrefix, 4519) = (bodies864, frames864, after864 bitmapPrefix, 4603) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 864 StackAnalysis.optimized864.2.1 StackAnalysis.optimized864.2.2 programs865 (bitmapPrefix, 4519) (step864 bitmapPrefix, 4520) (after865 (step864 bitmapPrefix), 4603) stackBody864_60 2 bodies865 frames865 (function864_eq bitmapPrefix) (compiled865_eq (step864 bitmapPrefix))
def programs := programs864
def bodies := bodies864
def frames := frames864
def after := after864
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 4603)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 4519) = result bitmapPrefix := compiled864_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk864_877
