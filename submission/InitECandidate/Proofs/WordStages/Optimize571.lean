import InitECandidate.Proofs.WordStages.Optimize555
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source571
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody571_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody571_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody571_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody571_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody571_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody571_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody571_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_4 optimizedBody571_5

def optimizedBody571_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody571_3, 571, 2)) (some 470) ([2]) (some (2, optimizedBody571_6, 571, 3))

def optimizedBody571_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody571_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody571_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody571_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody571_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody571_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody571_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody571_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody571_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody571_15, 571, 4)) (some 407) ([2]) (some (2, optimizedBody571_6, 571, 5))

def optimizedBody571_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody571_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody571_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody571_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody571_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody571_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody571_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody571_3, 571, 6)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody571_6, 571, 7))

def optimizedBody571_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody571_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody571_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody571_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_26 optimizedBody571_5

def optimizedBody571_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody571_25, 571, 8)) (some 490) ([2]) (some (2, optimizedBody571_27, 571, 9))

def optimizedBody571_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody571_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody571_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody571_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_30 optimizedBody571_31

def optimizedBody571_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_29 optimizedBody571_32

def optimizedBody571_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_8 optimizedBody571_33

def optimizedBody571_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_28 optimizedBody571_34

def optimizedBody571_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_4 optimizedBody571_35

def optimizedBody571_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_24 optimizedBody571_36

def optimizedBody571_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_8 optimizedBody571_37

def optimizedBody571_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_23 optimizedBody571_38

def optimizedBody571_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_22 optimizedBody571_39

def optimizedBody571_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_21 optimizedBody571_40

def optimizedBody571_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_17 optimizedBody571_41

def optimizedBody571_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_20 optimizedBody571_42

def optimizedBody571_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_17 optimizedBody571_43

def optimizedBody571_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_19 optimizedBody571_44

def optimizedBody571_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_17 optimizedBody571_45

def optimizedBody571_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_18 optimizedBody571_46

def optimizedBody571_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_17 optimizedBody571_47

def optimizedBody571_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_8 optimizedBody571_48

def optimizedBody571_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_16 optimizedBody571_49

def optimizedBody571_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_4 optimizedBody571_50

def optimizedBody571_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_14 optimizedBody571_51

def optimizedBody571_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_13 optimizedBody571_52

def optimizedBody571_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_12 optimizedBody571_53

def optimizedBody571_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_11 optimizedBody571_54

def optimizedBody571_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_10 optimizedBody571_55

def optimizedBody571_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_9 optimizedBody571_56

def optimizedBody571_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_8 optimizedBody571_57

def optimizedBody571_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_7 optimizedBody571_58

def optimizedBody571_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_2 optimizedBody571_59

def optimizedBody571_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_1 optimizedBody571_60

def optimizedBody571_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody571_0 optimizedBody571_61

def oracle571 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 22)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.ls 22))))))
def optimized571 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(571, 1, optimizedBody571_62)
theorem optimize571_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source571, oracle571) = optimized571 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize571_eq
end InitECandidate.Proofs.WordStages
