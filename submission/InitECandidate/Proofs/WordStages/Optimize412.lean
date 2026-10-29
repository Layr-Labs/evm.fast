import InitECandidate.Proofs.WordStages.Optimize396
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source412
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody412_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody412_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody412_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody412_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody412_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_2 optimizedBody412_3

def optimizedBody412_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_1, 412, 2)) (some 392) ([2, 4]) (some (2, optimizedBody412_4, 412, 3))

def optimizedBody412_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody412_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody412_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody412_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody412_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody412_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody412_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody412_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 4), (10, 44)]

def optimizedBody412_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44)]

def optimizedBody412_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_14 optimizedBody412_3

def optimizedBody412_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_13, 412, 4)) (some 186) ([2, 4]) (some (2, optimizedBody412_15, 412, 5))

def optimizedBody412_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody412_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody412_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody412_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody412_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody412_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody412_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def optimizedBody412_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_22 optimizedBody412_23

def optimizedBody412_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_21 optimizedBody412_24

def optimizedBody412_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_20 optimizedBody412_25

def optimizedBody412_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_19 optimizedBody412_26

def optimizedBody412_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_18 optimizedBody412_27

def optimizedBody412_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_28

def optimizedBody412_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody412_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody412_29 optimizedBody412_30

def optimizedBody412_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody412_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody412_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody412_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody412_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody412_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_36 optimizedBody412_24

def optimizedBody412_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_32 optimizedBody412_37

def optimizedBody412_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_35 optimizedBody412_38

def optimizedBody412_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_32 optimizedBody412_39

def optimizedBody412_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_34 optimizedBody412_40

def optimizedBody412_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_32 optimizedBody412_41

def optimizedBody412_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_33 optimizedBody412_42

def optimizedBody412_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_32 optimizedBody412_43

def optimizedBody412_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_44

def optimizedBody412_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_45

def optimizedBody412_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_31 optimizedBody412_46

def optimizedBody412_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_18 optimizedBody412_47

def optimizedBody412_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_17 optimizedBody412_48

def optimizedBody412_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_49

def optimizedBody412_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_16 optimizedBody412_50

def optimizedBody412_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_51

def optimizedBody412_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_11 optimizedBody412_52

def optimizedBody412_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_10 optimizedBody412_53

def optimizedBody412_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_9 optimizedBody412_54

def optimizedBody412_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_8 optimizedBody412_55

def optimizedBody412_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_7 optimizedBody412_56

def optimizedBody412_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_57

def optimizedBody412_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_5 optimizedBody412_58

def optimizedBody412_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_0 optimizedBody412_59

def oracle412 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
def optimized412 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(412, 3, optimizedBody412_60)
theorem optimize412_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source412, oracle412) = optimized412 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize412_eq
end InitECandidate.Proofs.WordStages
