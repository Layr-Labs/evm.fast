import InitECandidate.Proofs.WordStages.Optimize658
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source674
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody674_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody674_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody674_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody674_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 4), (8, 8), (0, 2), (14, 6)]

def optimizedBody674_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody674_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody674_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody674_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody674_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody674_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody674_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 8), (14, 14)]

def optimizedBody674_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody674_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody674_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (52, 14)]

def optimizedBody674_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody674_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (52, 52)]

def optimizedBody674_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody674_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody674_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (10, 2), (8, 8), (18, 44), (12, 46), (16, 48), (0, 50), (14, 52)]

def optimizedBody674_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44), (12, 46), (16, 48), (0, 50), (14, 52)]

def optimizedBody674_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody674_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_19 optimizedBody674_20

def optimizedBody674_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody674_18, 674, 2)) (some 660) ([2, 4, 6, 8]) (some (2, optimizedBody674_21, 674, 3))

def optimizedBody674_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody674_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody674_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody674_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody674_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody674_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody674_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody674_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody674_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody674_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody674_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody674_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody674_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody674_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 18), (46, 12), (8, 8), (0, 0), (14, 14)]

def optimizedBody674_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody674_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_36 optimizedBody674_37

def optimizedBody674_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_35 optimizedBody674_38

def optimizedBody674_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_23 optimizedBody674_39

def optimizedBody674_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_34 optimizedBody674_40

def optimizedBody674_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_33 optimizedBody674_41

def optimizedBody674_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_32 optimizedBody674_42

def optimizedBody674_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_31 optimizedBody674_43

def optimizedBody674_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_30 optimizedBody674_44

def optimizedBody674_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_29 optimizedBody674_45

def optimizedBody674_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_28 optimizedBody674_46

def optimizedBody674_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_27 optimizedBody674_47

def optimizedBody674_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_26 optimizedBody674_48

def optimizedBody674_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_25 optimizedBody674_49

def optimizedBody674_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_24 optimizedBody674_50

def optimizedBody674_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_23 optimizedBody674_51

def optimizedBody674_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_52

def optimizedBody674_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_22 optimizedBody674_53

def optimizedBody674_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_17 optimizedBody674_54

def optimizedBody674_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_16 optimizedBody674_55

def optimizedBody674_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_15 optimizedBody674_56

def optimizedBody674_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_14 optimizedBody674_57

def optimizedBody674_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_13 optimizedBody674_58

def optimizedBody674_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_12 optimizedBody674_59

def optimizedBody674_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_11 optimizedBody674_60

def optimizedBody674_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_10 optimizedBody674_61

def optimizedBody674_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_9 optimizedBody674_62

def optimizedBody674_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_8 optimizedBody674_63

def optimizedBody674_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_7 optimizedBody674_64

def optimizedBody674_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_6 optimizedBody674_65

def optimizedBody674_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_5 optimizedBody674_66

def optimizedBody674_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_67

def optimizedBody674_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody674_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_69

def optimizedBody674_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody674_68 optimizedBody674_70

def optimizedBody674_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 4), (8, 8), (0, 0), (14, 14)]

def optimizedBody674_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_72

def optimizedBody674_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_71 optimizedBody674_73

def optimizedBody674_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_4 optimizedBody674_74

def optimizedBody674_76 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody674_75 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody674_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody674_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody674_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody674_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_78 optimizedBody674_79

def optimizedBody674_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_77 optimizedBody674_80

def optimizedBody674_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_81

def optimizedBody674_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_76 optimizedBody674_82

def optimizedBody674_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_3 optimizedBody674_83

def optimizedBody674_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_84

def optimizedBody674_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_1 optimizedBody674_85

def optimizedBody674_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_0 optimizedBody674_86

def oracle674 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 7
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))
              4
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7)) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 23 (Flapjack.Spt.ls 4))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized674 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(674, 4, optimizedBody674_87)
theorem optimize674_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source674, oracle674) = optimized674 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize674_eq
end InitECandidate.Proofs.WordStages
