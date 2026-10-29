import InitECandidate.Proofs.WordStages.Optimize750
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source766
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody766_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody766_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8505329371266088957#64)

def optimizedBody766_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody766_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody766_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 17002214543764226050#64)

def optimizedBody766_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody766_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6865905132761471162#64)

def optimizedBody766_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody766_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8632934651105793861#64)

def optimizedBody766_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody766_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6631298214892334189#64)

def optimizedBody766_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody766_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1582556514881692819#64)

def optimizedBody766_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody766_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody766_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8505329371266088957#64)

def optimizedBody766_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody766_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody766_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17002214543764226050#64)

def optimizedBody766_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody766_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6865905132761471162#64)

def optimizedBody766_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody766_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8632934651105793861#64)

def optimizedBody766_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody766_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6631298214892334189#64)

def optimizedBody766_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody766_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1582556514881692819#64)

def optimizedBody766_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody766_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody766_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody766_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody766_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody766_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_31

def optimizedBody766_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_30 optimizedBody766_32

def optimizedBody766_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_13 optimizedBody766_33

def optimizedBody766_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_34

def optimizedBody766_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_29 optimizedBody766_35

def optimizedBody766_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_11 optimizedBody766_36

def optimizedBody766_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_37

def optimizedBody766_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_29 optimizedBody766_38

def optimizedBody766_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_9 optimizedBody766_39

def optimizedBody766_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_40

def optimizedBody766_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_29 optimizedBody766_41

def optimizedBody766_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_7 optimizedBody766_42

def optimizedBody766_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_43

def optimizedBody766_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_29 optimizedBody766_44

def optimizedBody766_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_5 optimizedBody766_45

def optimizedBody766_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_46

def optimizedBody766_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_29 optimizedBody766_47

def optimizedBody766_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_3 optimizedBody766_48

def optimizedBody766_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_49

def optimizedBody766_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_29 optimizedBody766_50

def optimizedBody766_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_28 optimizedBody766_51

def optimizedBody766_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_52

def optimizedBody766_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_27 optimizedBody766_53

def optimizedBody766_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_16 optimizedBody766_54

def optimizedBody766_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_26 optimizedBody766_55

def optimizedBody766_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_25 optimizedBody766_56

def optimizedBody766_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_16 optimizedBody766_57

def optimizedBody766_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_24 optimizedBody766_58

def optimizedBody766_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_23 optimizedBody766_59

def optimizedBody766_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_16 optimizedBody766_60

def optimizedBody766_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_22 optimizedBody766_61

def optimizedBody766_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_21 optimizedBody766_62

def optimizedBody766_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_16 optimizedBody766_63

def optimizedBody766_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_20 optimizedBody766_64

def optimizedBody766_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_19 optimizedBody766_65

def optimizedBody766_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_16 optimizedBody766_66

def optimizedBody766_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_18 optimizedBody766_67

def optimizedBody766_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_17 optimizedBody766_68

def optimizedBody766_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_16 optimizedBody766_69

def optimizedBody766_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_15 optimizedBody766_70

def optimizedBody766_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_14 optimizedBody766_71

def optimizedBody766_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_72

def optimizedBody766_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_13 optimizedBody766_73

def optimizedBody766_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_74

def optimizedBody766_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_12 optimizedBody766_75

def optimizedBody766_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_11 optimizedBody766_76

def optimizedBody766_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_77

def optimizedBody766_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_10 optimizedBody766_78

def optimizedBody766_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_9 optimizedBody766_79

def optimizedBody766_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_80

def optimizedBody766_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_8 optimizedBody766_81

def optimizedBody766_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_7 optimizedBody766_82

def optimizedBody766_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_83

def optimizedBody766_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_6 optimizedBody766_84

def optimizedBody766_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_5 optimizedBody766_85

def optimizedBody766_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_86

def optimizedBody766_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_4 optimizedBody766_87

def optimizedBody766_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_3 optimizedBody766_88

def optimizedBody766_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_2 optimizedBody766_89

def optimizedBody766_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_1 optimizedBody766_90

def optimizedBody766_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody766_0 optimizedBody766_91

def oracle766 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2)))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
            0
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
      Flapjack.Spt.ln))
def optimized766 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(766, 2, optimizedBody766_92)
theorem optimize766_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source766, oracle766) = optimized766 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize766_eq
end InitECandidate.Proofs.WordStages
