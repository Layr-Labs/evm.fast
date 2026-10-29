import InitECandidate.Proofs.WordStages.Optimize715
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source731
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody731_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody731_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8505329371266088957#64)

def optimizedBody731_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody731_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody731_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 17002214543764226050#64)

def optimizedBody731_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody731_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6865905132761471162#64)

def optimizedBody731_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody731_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8632934651105793861#64)

def optimizedBody731_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody731_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6631298214892334189#64)

def optimizedBody731_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody731_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1582556514881692819#64)

def optimizedBody731_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody731_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody731_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody731_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody731_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody731_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_17

def optimizedBody731_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_16 optimizedBody731_18

def optimizedBody731_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_13 optimizedBody731_19

def optimizedBody731_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_20

def optimizedBody731_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_15 optimizedBody731_21

def optimizedBody731_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_11 optimizedBody731_22

def optimizedBody731_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_23

def optimizedBody731_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_15 optimizedBody731_24

def optimizedBody731_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_9 optimizedBody731_25

def optimizedBody731_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_26

def optimizedBody731_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_15 optimizedBody731_27

def optimizedBody731_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_7 optimizedBody731_28

def optimizedBody731_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_29

def optimizedBody731_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_15 optimizedBody731_30

def optimizedBody731_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_5 optimizedBody731_31

def optimizedBody731_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_32

def optimizedBody731_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_15 optimizedBody731_33

def optimizedBody731_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_3 optimizedBody731_34

def optimizedBody731_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_35

def optimizedBody731_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_15 optimizedBody731_36

def optimizedBody731_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_14 optimizedBody731_37

def optimizedBody731_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_38

def optimizedBody731_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_13 optimizedBody731_39

def optimizedBody731_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_40

def optimizedBody731_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_12 optimizedBody731_41

def optimizedBody731_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_11 optimizedBody731_42

def optimizedBody731_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_43

def optimizedBody731_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_10 optimizedBody731_44

def optimizedBody731_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_9 optimizedBody731_45

def optimizedBody731_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_46

def optimizedBody731_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_8 optimizedBody731_47

def optimizedBody731_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_7 optimizedBody731_48

def optimizedBody731_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_49

def optimizedBody731_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_6 optimizedBody731_50

def optimizedBody731_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_5 optimizedBody731_51

def optimizedBody731_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_52

def optimizedBody731_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_4 optimizedBody731_53

def optimizedBody731_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_3 optimizedBody731_54

def optimizedBody731_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_2 optimizedBody731_55

def optimizedBody731_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_1 optimizedBody731_56

def optimizedBody731_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody731_0 optimizedBody731_57

def oracle731 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
            0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def optimized731 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(731, 2, optimizedBody731_58)
theorem optimize731_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source731, oracle731) = optimized731 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize731_eq
end InitECandidate.Proofs.WordStages
