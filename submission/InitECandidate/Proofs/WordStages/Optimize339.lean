import InitECandidate.Proofs.WordStages.Optimize323
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source339
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody339_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6)]

def optimizedBody339_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody339_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody339_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody339_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody339_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody339_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody339_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody339_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 2), (6, 6), (10, 44), (0, 46)]

def optimizedBody339_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody339_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody339_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_9 optimizedBody339_10

def optimizedBody339_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody339_8, 339, 2)) (some 161) ([2, 4]) (some (2, optimizedBody339_11, 339, 3))

def optimizedBody339_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody339_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody339_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody339_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 15#64)

def optimizedBody339_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody339_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody339_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody339_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_19 optimizedBody339_10

def optimizedBody339_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_18 optimizedBody339_20

def optimizedBody339_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_17 optimizedBody339_21

def optimizedBody339_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_2 optimizedBody339_22

def optimizedBody339_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_16 optimizedBody339_23

def optimizedBody339_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_13 optimizedBody339_24

def optimizedBody339_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody339_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody339_25 optimizedBody339_26

def optimizedBody339_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody339_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody339_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody339_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody339_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_31 optimizedBody339_21

def optimizedBody339_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_30 optimizedBody339_32

def optimizedBody339_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_29 optimizedBody339_33

def optimizedBody339_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_13 optimizedBody339_34

def optimizedBody339_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody339_35 optimizedBody339_26

def optimizedBody339_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody339_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody339_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_37 optimizedBody339_38

def optimizedBody339_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_13 optimizedBody339_39

def optimizedBody339_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_13 optimizedBody339_40

def optimizedBody339_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_36 optimizedBody339_41

def optimizedBody339_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_28 optimizedBody339_42

def optimizedBody339_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_13 optimizedBody339_43

def optimizedBody339_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_13 optimizedBody339_44

def optimizedBody339_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_27 optimizedBody339_45

def optimizedBody339_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_15 optimizedBody339_46

def optimizedBody339_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_14 optimizedBody339_47

def optimizedBody339_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_13 optimizedBody339_48

def optimizedBody339_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_12 optimizedBody339_49

def optimizedBody339_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_7 optimizedBody339_50

def optimizedBody339_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_6 optimizedBody339_51

def optimizedBody339_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_5 optimizedBody339_52

def optimizedBody339_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_4 optimizedBody339_53

def optimizedBody339_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_3 optimizedBody339_54

def optimizedBody339_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_2 optimizedBody339_55

def optimizedBody339_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_1 optimizedBody339_56

def optimizedBody339_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody339_0 optimizedBody339_57

def oracle339 : Option (Spt Nat) :=
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
def optimized339 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(339, 4, optimizedBody339_58)
theorem optimize339_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source339, oracle339) = optimized339 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize339_eq
end InitECandidate.Proofs.WordStages
