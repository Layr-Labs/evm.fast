import InitECandidate.Proofs.WordStages.Optimize256
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source272
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody272_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6)]

def optimizedBody272_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody272_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody272_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody272_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody272_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody272_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody272_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody272_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 2), (6, 6), (10, 44), (0, 46)]

def optimizedBody272_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody272_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody272_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_9 optimizedBody272_10

def optimizedBody272_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody272_8, 272, 2)) (some 161) ([2, 4]) (some (2, optimizedBody272_11, 272, 3))

def optimizedBody272_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody272_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody272_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody272_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody272_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody272_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody272_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody272_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_19 optimizedBody272_10

def optimizedBody272_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_18 optimizedBody272_20

def optimizedBody272_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_17 optimizedBody272_21

def optimizedBody272_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_2 optimizedBody272_22

def optimizedBody272_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_16 optimizedBody272_23

def optimizedBody272_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_13 optimizedBody272_24

def optimizedBody272_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody272_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody272_25 optimizedBody272_26

def optimizedBody272_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody272_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 7#64)

def optimizedBody272_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody272_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody272_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_31 optimizedBody272_21

def optimizedBody272_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_30 optimizedBody272_32

def optimizedBody272_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_29 optimizedBody272_33

def optimizedBody272_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_13 optimizedBody272_34

def optimizedBody272_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody272_35 optimizedBody272_26

def optimizedBody272_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody272_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody272_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_37 optimizedBody272_38

def optimizedBody272_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_13 optimizedBody272_39

def optimizedBody272_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_13 optimizedBody272_40

def optimizedBody272_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_36 optimizedBody272_41

def optimizedBody272_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_28 optimizedBody272_42

def optimizedBody272_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_13 optimizedBody272_43

def optimizedBody272_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_13 optimizedBody272_44

def optimizedBody272_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_27 optimizedBody272_45

def optimizedBody272_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_15 optimizedBody272_46

def optimizedBody272_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_14 optimizedBody272_47

def optimizedBody272_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_13 optimizedBody272_48

def optimizedBody272_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_12 optimizedBody272_49

def optimizedBody272_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_7 optimizedBody272_50

def optimizedBody272_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_6 optimizedBody272_51

def optimizedBody272_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_5 optimizedBody272_52

def optimizedBody272_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_4 optimizedBody272_53

def optimizedBody272_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_3 optimizedBody272_54

def optimizedBody272_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_2 optimizedBody272_55

def optimizedBody272_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_1 optimizedBody272_56

def optimizedBody272_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody272_0 optimizedBody272_57

def oracle272 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized272 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(272, 4, optimizedBody272_58)
theorem optimize272_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source272, oracle272) = optimized272 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize272_eq
end InitECandidate.Proofs.WordStages
