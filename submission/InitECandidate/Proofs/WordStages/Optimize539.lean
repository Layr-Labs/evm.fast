import InitECandidate.Proofs.WordStages.Optimize523
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source539
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody539_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody539_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody539_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody539_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody539_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody539_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody539_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_4 optimizedBody539_5

def optimizedBody539_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody539_3, 539, 2)) (some 470) ([2]) (some (2, optimizedBody539_6, 539, 3))

def optimizedBody539_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody539_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody539_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody539_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody539_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody539_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody539_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody539_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody539_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody539_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody539_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody539_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody539_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_19 optimizedBody539_5

def optimizedBody539_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_18 optimizedBody539_20

def optimizedBody539_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_17 optimizedBody539_21

def optimizedBody539_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_16 optimizedBody539_22

def optimizedBody539_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_15 optimizedBody539_23

def optimizedBody539_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_8 optimizedBody539_24

def optimizedBody539_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody539_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody539_25 optimizedBody539_26

def optimizedBody539_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody539_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody539_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody539_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody539_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_31 optimizedBody539_5

def optimizedBody539_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody539_30, 539, 4)) (some 538) ([2, 4]) (some (2, optimizedBody539_32, 539, 5))

def optimizedBody539_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody539_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody539_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody539_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_36 optimizedBody539_5

def optimizedBody539_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody539_35, 539, 6)) (some 490) ([2]) (some (2, optimizedBody539_37, 539, 7))

def optimizedBody539_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody539_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody539_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_39 optimizedBody539_40

def optimizedBody539_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_28 optimizedBody539_41

def optimizedBody539_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_8 optimizedBody539_42

def optimizedBody539_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_38 optimizedBody539_43

def optimizedBody539_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_31 optimizedBody539_44

def optimizedBody539_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_34 optimizedBody539_45

def optimizedBody539_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_8 optimizedBody539_46

def optimizedBody539_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_33 optimizedBody539_47

def optimizedBody539_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_29 optimizedBody539_48

def optimizedBody539_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_28 optimizedBody539_49

def optimizedBody539_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_9 optimizedBody539_50

def optimizedBody539_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_8 optimizedBody539_51

def optimizedBody539_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_8 optimizedBody539_52

def optimizedBody539_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_27 optimizedBody539_53

def optimizedBody539_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_14 optimizedBody539_54

def optimizedBody539_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_13 optimizedBody539_55

def optimizedBody539_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_12 optimizedBody539_56

def optimizedBody539_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_11 optimizedBody539_57

def optimizedBody539_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_10 optimizedBody539_58

def optimizedBody539_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_9 optimizedBody539_59

def optimizedBody539_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_8 optimizedBody539_60

def optimizedBody539_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_7 optimizedBody539_61

def optimizedBody539_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_2 optimizedBody539_62

def optimizedBody539_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_1 optimizedBody539_63

def optimizedBody539_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody539_0 optimizedBody539_64

def oracle539 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
          0
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
            2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.ls 23)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized539 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(539, 2, optimizedBody539_65)
theorem optimize539_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source539, oracle539) = optimized539 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize539_eq
end InitECandidate.Proofs.WordStages
