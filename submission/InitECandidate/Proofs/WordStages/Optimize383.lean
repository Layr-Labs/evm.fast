import InitECandidate.Proofs.WordStages.Optimize367
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source383
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody383_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody383_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody383_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody383_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody383_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6), (8, 8), (4, 4), (2, 2)]

def optimizedBody383_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody383_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody383_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody383_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody383_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody383_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody383_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody383_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody383_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody383_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_12 optimizedBody383_13

def optimizedBody383_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_11 optimizedBody383_14

def optimizedBody383_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_15

def optimizedBody383_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_13

def optimizedBody383_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 12) optimizedBody383_16 optimizedBody383_17

def optimizedBody383_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody383_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody383_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (4, 4), (2, 2)]

def optimizedBody383_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody383_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_21 optimizedBody383_22

def optimizedBody383_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_20 optimizedBody383_23

def optimizedBody383_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_19 optimizedBody383_24

def optimizedBody383_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_25

def optimizedBody383_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_18 optimizedBody383_26

def optimizedBody383_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_10 optimizedBody383_27

def optimizedBody383_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_9 optimizedBody383_28

def optimizedBody383_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_8 optimizedBody383_29

def optimizedBody383_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_7 optimizedBody383_30

def optimizedBody383_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_6 optimizedBody383_31

def optimizedBody383_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_32

def optimizedBody383_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody383_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody383_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_34 optimizedBody383_35

def optimizedBody383_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_36

def optimizedBody383_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody383_33 optimizedBody383_37

def optimizedBody383_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_21

def optimizedBody383_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_38 optimizedBody383_39

def optimizedBody383_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_5 optimizedBody383_40

def optimizedBody383_42 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody383_41 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def optimizedBody383_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody383_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody383_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody383_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody383_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody383_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody383_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_47 optimizedBody383_48

def optimizedBody383_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_46 optimizedBody383_49

def optimizedBody383_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_11 optimizedBody383_50

def optimizedBody383_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_45 optimizedBody383_51

def optimizedBody383_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_44 optimizedBody383_52

def optimizedBody383_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_43 optimizedBody383_53

def optimizedBody383_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_54

def optimizedBody383_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_42 optimizedBody383_55

def optimizedBody383_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_4 optimizedBody383_56

def optimizedBody383_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_3 optimizedBody383_57

def optimizedBody383_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_2 optimizedBody383_58

def optimizedBody383_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_1 optimizedBody383_59

def optimizedBody383_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_0 optimizedBody383_60

def oracle383 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 4)))
            1 (Flapjack.Spt.ls 0))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln) 3 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.ls 4)))
            0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 Flapjack.Spt.ln)))))
      Flapjack.Spt.ln))
def optimized383 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(383, 3, optimizedBody383_61)
theorem optimize383_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source383, oracle383) = optimized383 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize383_eq
end InitECandidate.Proofs.WordStages
