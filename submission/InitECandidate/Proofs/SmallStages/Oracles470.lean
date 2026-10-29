import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles470
def optimizedBody470_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2)]

def optimizedBody470_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody470_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody470_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody470_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody470_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody470_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_4 optimizedBody470_5

def optimizedBody470_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_3 optimizedBody470_6

def optimizedBody470_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_7

def optimizedBody470_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody470_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody470_8 optimizedBody470_9

def optimizedBody470_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody470_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody470_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 239#64)

def optimizedBody470_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody470_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody470_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_14 optimizedBody470_15

def optimizedBody470_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_16

def optimizedBody470_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_3 optimizedBody470_15

def optimizedBody470_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_18

def optimizedBody470_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody470_17 optimizedBody470_19

def optimizedBody470_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody470_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody470_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody470_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody470_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody470_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_24 optimizedBody470_25

def optimizedBody470_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_26

def optimizedBody470_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody470_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_28 optimizedBody470_25

def optimizedBody470_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_29

def optimizedBody470_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody470_27 optimizedBody470_30

def optimizedBody470_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody470_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody470_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody470_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody470_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_34 optimizedBody470_35

def optimizedBody470_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_36

def optimizedBody470_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody470_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_38 optimizedBody470_35

def optimizedBody470_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_39

def optimizedBody470_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody470_37 optimizedBody470_40

def optimizedBody470_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody470_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody470_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody470_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_14 optimizedBody470_6

def optimizedBody470_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody470_45 optimizedBody470_9

def optimizedBody470_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_46 optimizedBody470_8

def optimizedBody470_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_44 optimizedBody470_47

def optimizedBody470_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_4 optimizedBody470_48

def optimizedBody470_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_43 optimizedBody470_49

def optimizedBody470_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_42 optimizedBody470_50

def optimizedBody470_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_51

def optimizedBody470_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_41 optimizedBody470_52

def optimizedBody470_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_33 optimizedBody470_53

def optimizedBody470_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_23 optimizedBody470_54

def optimizedBody470_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_22 optimizedBody470_55

def optimizedBody470_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_32 optimizedBody470_56

def optimizedBody470_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_11 optimizedBody470_57

def optimizedBody470_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_58

def optimizedBody470_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_31 optimizedBody470_59

def optimizedBody470_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_24 optimizedBody470_60

def optimizedBody470_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_23 optimizedBody470_61

def optimizedBody470_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_22 optimizedBody470_62

def optimizedBody470_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_21 optimizedBody470_63

def optimizedBody470_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_11 optimizedBody470_64

def optimizedBody470_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_65

def optimizedBody470_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_20 optimizedBody470_66

def optimizedBody470_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_13 optimizedBody470_67

def optimizedBody470_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_4 optimizedBody470_68

def optimizedBody470_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_12 optimizedBody470_69

def optimizedBody470_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_11 optimizedBody470_70

def optimizedBody470_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_71

def optimizedBody470_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_72

def optimizedBody470_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_10 optimizedBody470_73

def optimizedBody470_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_1 optimizedBody470_74

def optimizedBody470_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_0 optimizedBody470_75

def oracle470 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 3)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln))
def optimized470 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(470, 3, optimizedBody470_76)
end InitECandidate.Proofs.SmallStages.Oracles470
