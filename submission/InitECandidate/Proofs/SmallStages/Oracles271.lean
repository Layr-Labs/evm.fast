import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles271
def optimizedBody271_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6)]

def optimizedBody271_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody271_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody271_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody271_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody271_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody271_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody271_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody271_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 2), (10, 44), (0, 46)]

def optimizedBody271_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody271_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody271_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_9 optimizedBody271_10

def optimizedBody271_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody271_8, 271, 2)) (some 161) ([2, 4]) (some (2, optimizedBody271_11, 271, 3))

def optimizedBody271_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody271_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody271_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody271_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody271_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody271_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody271_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody271_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_19 optimizedBody271_10

def optimizedBody271_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_18 optimizedBody271_20

def optimizedBody271_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_17 optimizedBody271_21

def optimizedBody271_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_2 optimizedBody271_22

def optimizedBody271_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_16 optimizedBody271_23

def optimizedBody271_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_24

def optimizedBody271_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody271_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody271_25 optimizedBody271_26

def optimizedBody271_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody271_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody271_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody271_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody271_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_31 optimizedBody271_23

def optimizedBody271_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_32

def optimizedBody271_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody271_33 optimizedBody271_26

def optimizedBody271_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody271_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_35

def optimizedBody271_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_36

def optimizedBody271_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_34 optimizedBody271_37

def optimizedBody271_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_30 optimizedBody271_38

def optimizedBody271_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_2 optimizedBody271_39

def optimizedBody271_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_29 optimizedBody271_40

def optimizedBody271_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_5 optimizedBody271_41

def optimizedBody271_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_42

def optimizedBody271_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody271_43 optimizedBody271_36

def optimizedBody271_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody271_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody271_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody271_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody271_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_48 optimizedBody271_21

def optimizedBody271_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_45 optimizedBody271_49

def optimizedBody271_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_47 optimizedBody271_50

def optimizedBody271_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_51

def optimizedBody271_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody271_52 optimizedBody271_26

def optimizedBody271_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody271_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_54

def optimizedBody271_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_55

def optimizedBody271_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_53 optimizedBody271_56

def optimizedBody271_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_46 optimizedBody271_57

def optimizedBody271_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_58

def optimizedBody271_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody271_59 optimizedBody271_55

def optimizedBody271_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6)]

def optimizedBody271_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody271_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_61 optimizedBody271_62

def optimizedBody271_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_63

def optimizedBody271_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_60 optimizedBody271_64

def optimizedBody271_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_15 optimizedBody271_65

def optimizedBody271_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_45 optimizedBody271_66

def optimizedBody271_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_67

def optimizedBody271_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_44 optimizedBody271_68

def optimizedBody271_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_15 optimizedBody271_69

def optimizedBody271_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_28 optimizedBody271_70

def optimizedBody271_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_71

def optimizedBody271_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_72

def optimizedBody271_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_27 optimizedBody271_73

def optimizedBody271_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_15 optimizedBody271_74

def optimizedBody271_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_14 optimizedBody271_75

def optimizedBody271_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_76

def optimizedBody271_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_12 optimizedBody271_77

def optimizedBody271_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_7 optimizedBody271_78

def optimizedBody271_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_6 optimizedBody271_79

def optimizedBody271_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_5 optimizedBody271_80

def optimizedBody271_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_4 optimizedBody271_81

def optimizedBody271_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_3 optimizedBody271_82

def optimizedBody271_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_2 optimizedBody271_83

def optimizedBody271_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_1 optimizedBody271_84

def optimizedBody271_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_0 optimizedBody271_85

def oracle271 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized271 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(271, 4, optimizedBody271_86)
end InitECandidate.Proofs.SmallStages.Oracles271
