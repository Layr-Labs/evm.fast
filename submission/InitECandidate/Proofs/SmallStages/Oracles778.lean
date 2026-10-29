import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles778
def optimizedBody778_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody778_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody778_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody778_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody778_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody778_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody778_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody778_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody778_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody778_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody778_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody778_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody778_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody778_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody778_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody778_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody778_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody778_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody778_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody778_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody778_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody778_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody778_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody778_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_22

def optimizedBody778_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_21 optimizedBody778_23

def optimizedBody778_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_9 optimizedBody778_24

def optimizedBody778_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_25

def optimizedBody778_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_26

def optimizedBody778_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_8 optimizedBody778_27

def optimizedBody778_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_28

def optimizedBody778_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_29

def optimizedBody778_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_7 optimizedBody778_30

def optimizedBody778_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_31

def optimizedBody778_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_32

def optimizedBody778_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_6 optimizedBody778_33

def optimizedBody778_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_34

def optimizedBody778_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_35

def optimizedBody778_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_5 optimizedBody778_36

def optimizedBody778_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_37

def optimizedBody778_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_38

def optimizedBody778_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_3 optimizedBody778_39

def optimizedBody778_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_40

def optimizedBody778_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_41

def optimizedBody778_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_20 optimizedBody778_42

def optimizedBody778_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_43

def optimizedBody778_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_19 optimizedBody778_44

def optimizedBody778_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_12 optimizedBody778_45

def optimizedBody778_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_14 optimizedBody778_46

def optimizedBody778_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_18 optimizedBody778_47

def optimizedBody778_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_12 optimizedBody778_48

def optimizedBody778_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_14 optimizedBody778_49

def optimizedBody778_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_17 optimizedBody778_50

def optimizedBody778_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_12 optimizedBody778_51

def optimizedBody778_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_14 optimizedBody778_52

def optimizedBody778_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_16 optimizedBody778_53

def optimizedBody778_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_12 optimizedBody778_54

def optimizedBody778_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_14 optimizedBody778_55

def optimizedBody778_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_15 optimizedBody778_56

def optimizedBody778_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_12 optimizedBody778_57

def optimizedBody778_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_14 optimizedBody778_58

def optimizedBody778_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_13 optimizedBody778_59

def optimizedBody778_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_12 optimizedBody778_60

def optimizedBody778_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_11 optimizedBody778_61

def optimizedBody778_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_10 optimizedBody778_62

def optimizedBody778_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_63

def optimizedBody778_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_9 optimizedBody778_64

def optimizedBody778_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_65

def optimizedBody778_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_66

def optimizedBody778_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_8 optimizedBody778_67

def optimizedBody778_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_68

def optimizedBody778_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_69

def optimizedBody778_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_7 optimizedBody778_70

def optimizedBody778_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_71

def optimizedBody778_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_72

def optimizedBody778_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_6 optimizedBody778_73

def optimizedBody778_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_74

def optimizedBody778_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_75

def optimizedBody778_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_5 optimizedBody778_76

def optimizedBody778_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_77

def optimizedBody778_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_4 optimizedBody778_78

def optimizedBody778_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_3 optimizedBody778_79

def optimizedBody778_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_80

def optimizedBody778_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_1 optimizedBody778_81

def optimizedBody778_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_0 optimizedBody778_82

def oracle778 : Option (Spt Nat) :=
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
def optimized778 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(778, 2, optimizedBody778_83)
end InitECandidate.Proofs.SmallStages.Oracles778
