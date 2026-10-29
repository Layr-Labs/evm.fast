import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function832
import InitECandidate.Proofs.BackendStages.Function833
import InitECandidate.Proofs.BackendStages.Function834
import InitECandidate.Proofs.BackendStages.Function835
import InitECandidate.Proofs.BackendStages.Function836
import InitECandidate.Proofs.BackendStages.Function837
import InitECandidate.Proofs.BackendStages.Function838
import InitECandidate.Proofs.BackendStages.Function839
import InitECandidate.Proofs.BackendStages.Function840
import InitECandidate.Proofs.BackendStages.Function841
import InitECandidate.Proofs.BackendStages.Function842
import InitECandidate.Proofs.BackendStages.Function843
import InitECandidate.Proofs.BackendStages.Function844
import InitECandidate.Proofs.BackendStages.Function845
import InitECandidate.Proofs.BackendStages.Function846
import InitECandidate.Proofs.BackendStages.Function847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk832_847
def programs848 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies848 : List (Nat × StackLang.HolProg 64) := []
def frames848 : List Nat := []
def after848 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled848_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs848 (bitmapPrefix, 4240) = (bodies848, frames848, after848 bitmapPrefix, 4240) := by rfl
def step847 (bitmapPrefix : AppList (BitVec 64)) := (function847 bitmapPrefix).2.2.1
def programs847 := (847, StackAnalysis.optimized847.2.1, StackAnalysis.optimized847.2.2) :: programs848
def bodies847 := (847, stackBody847_395) :: bodies848
def frames847 := 8 :: frames848
def after847 (bitmapPrefix : AppList (BitVec 64)) := after848 (step847 bitmapPrefix)
theorem compiled847_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs847 (bitmapPrefix, 4235) = (bodies847, frames847, after847 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 847 StackAnalysis.optimized847.2.1 StackAnalysis.optimized847.2.2 programs848 (bitmapPrefix, 4235) (step847 bitmapPrefix, 4240) (after848 (step847 bitmapPrefix), 4240) stackBody847_395 8 bodies848 frames848 (function847_eq bitmapPrefix) (compiled848_eq (step847 bitmapPrefix))
def step846 (bitmapPrefix : AppList (BitVec 64)) := (function846 bitmapPrefix).2.2.1
def programs846 := (846, StackAnalysis.optimized846.2.1, StackAnalysis.optimized846.2.2) :: programs847
def bodies846 := (846, stackBody846_417) :: bodies847
def frames846 := 9 :: frames847
def after846 (bitmapPrefix : AppList (BitVec 64)) := after847 (step846 bitmapPrefix)
theorem compiled846_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs846 (bitmapPrefix, 4232) = (bodies846, frames846, after846 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 846 StackAnalysis.optimized846.2.1 StackAnalysis.optimized846.2.2 programs847 (bitmapPrefix, 4232) (step846 bitmapPrefix, 4235) (after847 (step846 bitmapPrefix), 4240) stackBody846_417 9 bodies847 frames847 (function846_eq bitmapPrefix) (compiled847_eq (step846 bitmapPrefix))
def step845 (bitmapPrefix : AppList (BitVec 64)) := (function845 bitmapPrefix).2.2.1
def programs845 := (845, StackAnalysis.optimized845.2.1, StackAnalysis.optimized845.2.2) :: programs846
def bodies845 := (845, stackBody845_650) :: bodies846
def frames845 := 5 :: frames846
def after845 (bitmapPrefix : AppList (BitVec 64)) := after846 (step845 bitmapPrefix)
theorem compiled845_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs845 (bitmapPrefix, 4226) = (bodies845, frames845, after845 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 845 StackAnalysis.optimized845.2.1 StackAnalysis.optimized845.2.2 programs846 (bitmapPrefix, 4226) (step845 bitmapPrefix, 4232) (after846 (step845 bitmapPrefix), 4240) stackBody845_650 5 bodies846 frames846 (function845_eq bitmapPrefix) (compiled846_eq (step845 bitmapPrefix))
def step844 (bitmapPrefix : AppList (BitVec 64)) := (function844 bitmapPrefix).2.2.1
def programs844 := (844, StackAnalysis.optimized844.2.1, StackAnalysis.optimized844.2.2) :: programs845
def bodies844 := (844, stackBody844_514) :: bodies845
def frames844 := 4 :: frames845
def after844 (bitmapPrefix : AppList (BitVec 64)) := after845 (step844 bitmapPrefix)
theorem compiled844_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs844 (bitmapPrefix, 4222) = (bodies844, frames844, after844 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 844 StackAnalysis.optimized844.2.1 StackAnalysis.optimized844.2.2 programs845 (bitmapPrefix, 4222) (step844 bitmapPrefix, 4226) (after845 (step844 bitmapPrefix), 4240) stackBody844_514 4 bodies845 frames845 (function844_eq bitmapPrefix) (compiled845_eq (step844 bitmapPrefix))
def step843 (bitmapPrefix : AppList (BitVec 64)) := (function843 bitmapPrefix).2.2.1
def programs843 := (843, StackAnalysis.optimized843.2.1, StackAnalysis.optimized843.2.2) :: programs844
def bodies843 := (843, stackBody843_556) :: bodies844
def frames843 := 7 :: frames844
def after843 (bitmapPrefix : AppList (BitVec 64)) := after844 (step843 bitmapPrefix)
theorem compiled843_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs843 (bitmapPrefix, 4214) = (bodies843, frames843, after843 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 843 StackAnalysis.optimized843.2.1 StackAnalysis.optimized843.2.2 programs844 (bitmapPrefix, 4214) (step843 bitmapPrefix, 4222) (after844 (step843 bitmapPrefix), 4240) stackBody843_556 7 bodies844 frames844 (function843_eq bitmapPrefix) (compiled844_eq (step843 bitmapPrefix))
def step842 (bitmapPrefix : AppList (BitVec 64)) := (function842 bitmapPrefix).2.2.1
def programs842 := (842, StackAnalysis.optimized842.2.1, StackAnalysis.optimized842.2.2) :: programs843
def bodies842 := (842, stackBody842_676) :: bodies843
def frames842 := 14 :: frames843
def after842 (bitmapPrefix : AppList (BitVec 64)) := after843 (step842 bitmapPrefix)
theorem compiled842_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs842 (bitmapPrefix, 4208) = (bodies842, frames842, after842 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 842 StackAnalysis.optimized842.2.1 StackAnalysis.optimized842.2.2 programs843 (bitmapPrefix, 4208) (step842 bitmapPrefix, 4214) (after843 (step842 bitmapPrefix), 4240) stackBody842_676 14 bodies843 frames843 (function842_eq bitmapPrefix) (compiled843_eq (step842 bitmapPrefix))
def step841 (bitmapPrefix : AppList (BitVec 64)) := (function841 bitmapPrefix).2.2.1
def programs841 := (841, StackAnalysis.optimized841.2.1, StackAnalysis.optimized841.2.2) :: programs842
def bodies841 := (841, stackBody841_77) :: bodies842
def frames841 := 0 :: frames842
def after841 (bitmapPrefix : AppList (BitVec 64)) := after842 (step841 bitmapPrefix)
theorem compiled841_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs841 (bitmapPrefix, 4208) = (bodies841, frames841, after841 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 841 StackAnalysis.optimized841.2.1 StackAnalysis.optimized841.2.2 programs842 (bitmapPrefix, 4208) (step841 bitmapPrefix, 4208) (after842 (step841 bitmapPrefix), 4240) stackBody841_77 0 bodies842 frames842 (function841_eq bitmapPrefix) (compiled842_eq (step841 bitmapPrefix))
def step840 (bitmapPrefix : AppList (BitVec 64)) := (function840 bitmapPrefix).2.2.1
def programs840 := (840, StackAnalysis.optimized840.2.1, StackAnalysis.optimized840.2.2) :: programs841
def bodies840 := (840, stackBody840_196) :: bodies841
def frames840 := 5 :: frames841
def after840 (bitmapPrefix : AppList (BitVec 64)) := after841 (step840 bitmapPrefix)
theorem compiled840_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs840 (bitmapPrefix, 4205) = (bodies840, frames840, after840 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 840 StackAnalysis.optimized840.2.1 StackAnalysis.optimized840.2.2 programs841 (bitmapPrefix, 4205) (step840 bitmapPrefix, 4208) (after841 (step840 bitmapPrefix), 4240) stackBody840_196 5 bodies841 frames841 (function840_eq bitmapPrefix) (compiled841_eq (step840 bitmapPrefix))
def step839 (bitmapPrefix : AppList (BitVec 64)) := (function839 bitmapPrefix).2.2.1
def programs839 := (839, StackAnalysis.optimized839.2.1, StackAnalysis.optimized839.2.2) :: programs840
def bodies839 := (839, stackBody839_380) :: bodies840
def frames839 := 10 :: frames840
def after839 (bitmapPrefix : AppList (BitVec 64)) := after840 (step839 bitmapPrefix)
theorem compiled839_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs839 (bitmapPrefix, 4202) = (bodies839, frames839, after839 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 839 StackAnalysis.optimized839.2.1 StackAnalysis.optimized839.2.2 programs840 (bitmapPrefix, 4202) (step839 bitmapPrefix, 4205) (after840 (step839 bitmapPrefix), 4240) stackBody839_380 10 bodies840 frames840 (function839_eq bitmapPrefix) (compiled840_eq (step839 bitmapPrefix))
def step838 (bitmapPrefix : AppList (BitVec 64)) := (function838 bitmapPrefix).2.2.1
def programs838 := (838, StackAnalysis.optimized838.2.1, StackAnalysis.optimized838.2.2) :: programs839
def bodies838 := (838, stackBody838_323) :: bodies839
def frames838 := 7 :: frames839
def after838 (bitmapPrefix : AppList (BitVec 64)) := after839 (step838 bitmapPrefix)
theorem compiled838_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs838 (bitmapPrefix, 4198) = (bodies838, frames838, after838 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 838 StackAnalysis.optimized838.2.1 StackAnalysis.optimized838.2.2 programs839 (bitmapPrefix, 4198) (step838 bitmapPrefix, 4202) (after839 (step838 bitmapPrefix), 4240) stackBody838_323 7 bodies839 frames839 (function838_eq bitmapPrefix) (compiled839_eq (step838 bitmapPrefix))
def step837 (bitmapPrefix : AppList (BitVec 64)) := (function837 bitmapPrefix).2.2.1
def programs837 := (837, StackAnalysis.optimized837.2.1, StackAnalysis.optimized837.2.2) :: programs838
def bodies837 := (837, stackBody837_1268) :: bodies838
def frames837 := 3 :: frames838
def after837 (bitmapPrefix : AppList (BitVec 64)) := after838 (step837 bitmapPrefix)
theorem compiled837_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs837 (bitmapPrefix, 4180) = (bodies837, frames837, after837 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 837 StackAnalysis.optimized837.2.1 StackAnalysis.optimized837.2.2 programs838 (bitmapPrefix, 4180) (step837 bitmapPrefix, 4198) (after838 (step837 bitmapPrefix), 4240) stackBody837_1268 3 bodies838 frames838 (function837_eq bitmapPrefix) (compiled838_eq (step837 bitmapPrefix))
def step836 (bitmapPrefix : AppList (BitVec 64)) := (function836 bitmapPrefix).2.2.1
def programs836 := (836, StackAnalysis.optimized836.2.1, StackAnalysis.optimized836.2.2) :: programs837
def bodies836 := (836, stackBody836_1618) :: bodies837
def frames836 := 13 :: frames837
def after836 (bitmapPrefix : AppList (BitVec 64)) := after837 (step836 bitmapPrefix)
theorem compiled836_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs836 (bitmapPrefix, 4157) = (bodies836, frames836, after836 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 836 StackAnalysis.optimized836.2.1 StackAnalysis.optimized836.2.2 programs837 (bitmapPrefix, 4157) (step836 bitmapPrefix, 4180) (after837 (step836 bitmapPrefix), 4240) stackBody836_1618 13 bodies837 frames837 (function836_eq bitmapPrefix) (compiled837_eq (step836 bitmapPrefix))
def step835 (bitmapPrefix : AppList (BitVec 64)) := (function835 bitmapPrefix).2.2.1
def programs835 := (835, StackAnalysis.optimized835.2.1, StackAnalysis.optimized835.2.2) :: programs836
def bodies835 := (835, stackBody835_254) :: bodies836
def frames835 := 7 :: frames836
def after835 (bitmapPrefix : AppList (BitVec 64)) := after836 (step835 bitmapPrefix)
theorem compiled835_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs835 (bitmapPrefix, 4155) = (bodies835, frames835, after835 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 835 StackAnalysis.optimized835.2.1 StackAnalysis.optimized835.2.2 programs836 (bitmapPrefix, 4155) (step835 bitmapPrefix, 4157) (after836 (step835 bitmapPrefix), 4240) stackBody835_254 7 bodies836 frames836 (function835_eq bitmapPrefix) (compiled836_eq (step835 bitmapPrefix))
def step834 (bitmapPrefix : AppList (BitVec 64)) := (function834 bitmapPrefix).2.2.1
def programs834 := (834, StackAnalysis.optimized834.2.1, StackAnalysis.optimized834.2.2) :: programs835
def bodies834 := (834, stackBody834_1201) :: bodies835
def frames834 := 12 :: frames835
def after834 (bitmapPrefix : AppList (BitVec 64)) := after835 (step834 bitmapPrefix)
theorem compiled834_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs834 (bitmapPrefix, 4147) = (bodies834, frames834, after834 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 834 StackAnalysis.optimized834.2.1 StackAnalysis.optimized834.2.2 programs835 (bitmapPrefix, 4147) (step834 bitmapPrefix, 4155) (after835 (step834 bitmapPrefix), 4240) stackBody834_1201 12 bodies835 frames835 (function834_eq bitmapPrefix) (compiled835_eq (step834 bitmapPrefix))
def step833 (bitmapPrefix : AppList (BitVec 64)) := (function833 bitmapPrefix).2.2.1
def programs833 := (833, StackAnalysis.optimized833.2.1, StackAnalysis.optimized833.2.2) :: programs834
def bodies833 := (833, stackBody833_332) :: bodies834
def frames833 := 5 :: frames834
def after833 (bitmapPrefix : AppList (BitVec 64)) := after834 (step833 bitmapPrefix)
theorem compiled833_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs833 (bitmapPrefix, 4142) = (bodies833, frames833, after833 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 833 StackAnalysis.optimized833.2.1 StackAnalysis.optimized833.2.2 programs834 (bitmapPrefix, 4142) (step833 bitmapPrefix, 4147) (after834 (step833 bitmapPrefix), 4240) stackBody833_332 5 bodies834 frames834 (function833_eq bitmapPrefix) (compiled834_eq (step833 bitmapPrefix))
def step832 (bitmapPrefix : AppList (BitVec 64)) := (function832 bitmapPrefix).2.2.1
def programs832 := (832, StackAnalysis.optimized832.2.1, StackAnalysis.optimized832.2.2) :: programs833
def bodies832 := (832, stackBody832_1072) :: bodies833
def frames832 := 15 :: frames833
def after832 (bitmapPrefix : AppList (BitVec 64)) := after833 (step832 bitmapPrefix)
theorem compiled832_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs832 (bitmapPrefix, 4127) = (bodies832, frames832, after832 bitmapPrefix, 4240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 832 StackAnalysis.optimized832.2.1 StackAnalysis.optimized832.2.2 programs833 (bitmapPrefix, 4127) (step832 bitmapPrefix, 4142) (after833 (step832 bitmapPrefix), 4240) stackBody832_1072 15 bodies833 frames833 (function832_eq bitmapPrefix) (compiled833_eq (step832 bitmapPrefix))
def programs := programs832
def bodies := bodies832
def frames := frames832
def after := after832
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 4240)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 4127) = result bitmapPrefix := compiled832_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk832_847
