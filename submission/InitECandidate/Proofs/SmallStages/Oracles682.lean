import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source682
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles682
def optimizedBody682_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody682_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody682_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody682_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (10, 8), (46, 4), (12, 12), (0, 2), (18, 6)]

def optimizedBody682_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody682_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody682_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody682_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody682_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 18)))

def optimizedBody682_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody682_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (50, 12), (18, 18)]

def optimizedBody682_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.reg 4)))

def optimizedBody682_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody682_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (50, 50), (54, 18)]

def optimizedBody682_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody682_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (50, 50), (54, 54)]

def optimizedBody682_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody682_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 46), (50, 50), (52, 0), (54, 54)]

def optimizedBody682_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (12, 2), (6, 6), (8, 8), (20, 44), (10, 46), (14, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody682_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (20, 44), (10, 46), (14, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody682_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody682_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_19 optimizedBody682_20

def optimizedBody682_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody682_18, 682, 2)) (some 672) ([2, 4, 6, 8, 10]) (some (2, optimizedBody682_21, 682, 3))

def optimizedBody682_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody682_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody682_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody682_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody682_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (8, 8), (6, 6), (4, 4)]

def optimizedBody682_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody682_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody682_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody682_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody682_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody682_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody682_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody682_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody682_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 20), (10, 10), (46, 14), (12, 12), (0, 0), (18, 18)]

def optimizedBody682_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody682_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_36 optimizedBody682_37

def optimizedBody682_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_35 optimizedBody682_38

def optimizedBody682_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_23 optimizedBody682_39

def optimizedBody682_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_34 optimizedBody682_40

def optimizedBody682_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_33 optimizedBody682_41

def optimizedBody682_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_32 optimizedBody682_42

def optimizedBody682_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_31 optimizedBody682_43

def optimizedBody682_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_30 optimizedBody682_44

def optimizedBody682_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_29 optimizedBody682_45

def optimizedBody682_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_28 optimizedBody682_46

def optimizedBody682_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_27 optimizedBody682_47

def optimizedBody682_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_26 optimizedBody682_48

def optimizedBody682_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_25 optimizedBody682_49

def optimizedBody682_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_24 optimizedBody682_50

def optimizedBody682_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_23 optimizedBody682_51

def optimizedBody682_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_2 optimizedBody682_52

def optimizedBody682_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_22 optimizedBody682_53

def optimizedBody682_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_17 optimizedBody682_54

def optimizedBody682_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_16 optimizedBody682_55

def optimizedBody682_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_15 optimizedBody682_56

def optimizedBody682_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_14 optimizedBody682_57

def optimizedBody682_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_13 optimizedBody682_58

def optimizedBody682_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_12 optimizedBody682_59

def optimizedBody682_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_11 optimizedBody682_60

def optimizedBody682_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_10 optimizedBody682_61

def optimizedBody682_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_9 optimizedBody682_62

def optimizedBody682_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_8 optimizedBody682_63

def optimizedBody682_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_7 optimizedBody682_64

def optimizedBody682_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_6 optimizedBody682_65

def optimizedBody682_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_5 optimizedBody682_66

def optimizedBody682_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_2 optimizedBody682_67

def optimizedBody682_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody682_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_2 optimizedBody682_69

def optimizedBody682_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 0) optimizedBody682_68 optimizedBody682_70

def optimizedBody682_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (10, 10), (46, 4), (12, 12), (0, 0), (18, 18)]

def optimizedBody682_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_2 optimizedBody682_72

def optimizedBody682_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_71 optimizedBody682_73

def optimizedBody682_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_4 optimizedBody682_74

def optimizedBody682_76 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody682_75 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody682_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody682_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody682_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody682_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_78 optimizedBody682_79

def optimizedBody682_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_77 optimizedBody682_80

def optimizedBody682_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_2 optimizedBody682_81

def optimizedBody682_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_76 optimizedBody682_82

def optimizedBody682_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_3 optimizedBody682_83

def optimizedBody682_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_2 optimizedBody682_84

def optimizedBody682_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_1 optimizedBody682_85

def optimizedBody682_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody682_0 optimizedBody682_86

def oracle682 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 4
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 6
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8)) 6
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 8)))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 9 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 3
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 9
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 9 (Flapjack.Spt.ls 9)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
def optimized682 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(682, 5, optimizedBody682_87)
end InitECandidate.Proofs.SmallStages.Oracles682
