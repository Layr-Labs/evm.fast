import InitECandidate.Proofs.WordStages.Optimize659
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source675
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody675_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody675_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody675_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody675_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (10, 8), (46, 4), (12, 12), (0, 2), (18, 6)]

def optimizedBody675_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody675_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody675_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody675_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody675_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 18)))

def optimizedBody675_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody675_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (50, 12), (18, 18)]

def optimizedBody675_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.reg 4)))

def optimizedBody675_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody675_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (50, 50), (54, 18)]

def optimizedBody675_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody675_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (50, 50), (54, 54)]

def optimizedBody675_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody675_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 46), (50, 50), (52, 0), (54, 54)]

def optimizedBody675_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (12, 2), (6, 6), (8, 8), (20, 44), (10, 46), (14, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody675_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (20, 44), (10, 46), (14, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody675_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody675_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_19 optimizedBody675_20

def optimizedBody675_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody675_18, 675, 2)) (some 665) ([2, 4, 6, 8, 10]) (some (2, optimizedBody675_21, 675, 3))

def optimizedBody675_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody675_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody675_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody675_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody675_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (8, 8), (6, 6), (4, 4)]

def optimizedBody675_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody675_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody675_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody675_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody675_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody675_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody675_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody675_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody675_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 20), (10, 10), (46, 14), (12, 12), (0, 0), (18, 18)]

def optimizedBody675_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody675_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_36 optimizedBody675_37

def optimizedBody675_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_35 optimizedBody675_38

def optimizedBody675_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_23 optimizedBody675_39

def optimizedBody675_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_34 optimizedBody675_40

def optimizedBody675_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_33 optimizedBody675_41

def optimizedBody675_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_32 optimizedBody675_42

def optimizedBody675_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_31 optimizedBody675_43

def optimizedBody675_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_30 optimizedBody675_44

def optimizedBody675_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_29 optimizedBody675_45

def optimizedBody675_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_28 optimizedBody675_46

def optimizedBody675_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_27 optimizedBody675_47

def optimizedBody675_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_26 optimizedBody675_48

def optimizedBody675_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_25 optimizedBody675_49

def optimizedBody675_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_24 optimizedBody675_50

def optimizedBody675_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_23 optimizedBody675_51

def optimizedBody675_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_2 optimizedBody675_52

def optimizedBody675_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_22 optimizedBody675_53

def optimizedBody675_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_17 optimizedBody675_54

def optimizedBody675_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_16 optimizedBody675_55

def optimizedBody675_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_15 optimizedBody675_56

def optimizedBody675_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_14 optimizedBody675_57

def optimizedBody675_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_13 optimizedBody675_58

def optimizedBody675_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_12 optimizedBody675_59

def optimizedBody675_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_11 optimizedBody675_60

def optimizedBody675_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_10 optimizedBody675_61

def optimizedBody675_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_9 optimizedBody675_62

def optimizedBody675_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_8 optimizedBody675_63

def optimizedBody675_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_7 optimizedBody675_64

def optimizedBody675_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_65

def optimizedBody675_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_5 optimizedBody675_66

def optimizedBody675_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_2 optimizedBody675_67

def optimizedBody675_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody675_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_2 optimizedBody675_69

def optimizedBody675_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 0) optimizedBody675_68 optimizedBody675_70

def optimizedBody675_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (10, 10), (46, 4), (12, 12), (0, 0), (18, 18)]

def optimizedBody675_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_2 optimizedBody675_72

def optimizedBody675_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_71 optimizedBody675_73

def optimizedBody675_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_4 optimizedBody675_74

def optimizedBody675_76 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody675_75 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody675_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody675_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody675_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody675_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_78 optimizedBody675_79

def optimizedBody675_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_77 optimizedBody675_80

def optimizedBody675_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_2 optimizedBody675_81

def optimizedBody675_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_76 optimizedBody675_82

def optimizedBody675_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_3 optimizedBody675_83

def optimizedBody675_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_2 optimizedBody675_84

def optimizedBody675_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_1 optimizedBody675_85

def optimizedBody675_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_0 optimizedBody675_86

def oracle675 : Option (Spt Nat) :=
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
def optimized675 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(675, 5, optimizedBody675_87)
theorem optimize675_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source675, oracle675) = optimized675 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize675_eq
end InitECandidate.Proofs.WordStages
