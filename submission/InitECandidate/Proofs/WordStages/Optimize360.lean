import InitECandidate.Proofs.WordStages.Optimize344
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source360
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody360_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody360_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody360_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody360_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody360_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (8, 8), (46, 6), (10, 4), (12, 2)]

def optimizedBody360_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody360_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody360_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody360_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody360_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody360_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody360_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody360_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody360_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody360_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody360_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 46), (50, 10), (52, 12), (54, 0)]

def optimizedBody360_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54)]

def optimizedBody360_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54)]

def optimizedBody360_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody360_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_17 optimizedBody360_18

def optimizedBody360_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody360_16, 360, 2)) (some 180) ([2]) (some (2, optimizedBody360_19, 360, 3))

def optimizedBody360_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody360_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody360_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody360_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2)]

def optimizedBody360_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (14, 44), (4, 46), (0, 48), (10, 50), (12, 52), (6, 54)]

def optimizedBody360_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (4, 46), (0, 48), (10, 50), (12, 52), (6, 54)]

def optimizedBody360_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_26 optimizedBody360_18

def optimizedBody360_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody360_25, 360, 4)) (some 180) ([2]) (some (2, optimizedBody360_27, 360, 5))

def optimizedBody360_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody360_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody360_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody360_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody360_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody360_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 14), (8, 8), (46, 0), (10, 10), (12, 12)]

def optimizedBody360_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody360_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_34 optimizedBody360_35

def optimizedBody360_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_33 optimizedBody360_36

def optimizedBody360_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_21 optimizedBody360_37

def optimizedBody360_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_32 optimizedBody360_38

def optimizedBody360_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_31 optimizedBody360_39

def optimizedBody360_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_30 optimizedBody360_40

def optimizedBody360_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_29 optimizedBody360_41

def optimizedBody360_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_3 optimizedBody360_42

def optimizedBody360_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_28 optimizedBody360_43

def optimizedBody360_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_24 optimizedBody360_44

def optimizedBody360_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_23 optimizedBody360_45

def optimizedBody360_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_22 optimizedBody360_46

def optimizedBody360_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_21 optimizedBody360_47

def optimizedBody360_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_3 optimizedBody360_48

def optimizedBody360_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_20 optimizedBody360_49

def optimizedBody360_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_15 optimizedBody360_50

def optimizedBody360_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_9 optimizedBody360_51

def optimizedBody360_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_14 optimizedBody360_52

def optimizedBody360_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_13 optimizedBody360_53

def optimizedBody360_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_12 optimizedBody360_54

def optimizedBody360_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_11 optimizedBody360_55

def optimizedBody360_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_10 optimizedBody360_56

def optimizedBody360_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_9 optimizedBody360_57

def optimizedBody360_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_8 optimizedBody360_58

def optimizedBody360_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_7 optimizedBody360_59

def optimizedBody360_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_6 optimizedBody360_60

def optimizedBody360_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_3 optimizedBody360_61

def optimizedBody360_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody360_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_3 optimizedBody360_63

def optimizedBody360_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 10) optimizedBody360_62 optimizedBody360_64

def optimizedBody360_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (8, 8), (46, 2), (10, 10), (12, 12)]

def optimizedBody360_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_3 optimizedBody360_66

def optimizedBody360_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_65 optimizedBody360_67

def optimizedBody360_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_5 optimizedBody360_68

def optimizedBody360_70 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln) optimizedBody360_69 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody360_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody360_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody360_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_71 optimizedBody360_72

def optimizedBody360_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_3 optimizedBody360_73

def optimizedBody360_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_70 optimizedBody360_74

def optimizedBody360_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_4 optimizedBody360_75

def optimizedBody360_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_3 optimizedBody360_76

def optimizedBody360_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_2 optimizedBody360_77

def optimizedBody360_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_1 optimizedBody360_78

def optimizedBody360_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody360_0 optimizedBody360_79

def oracle360 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))) 4
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)) 4 Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln) 0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 5
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 6
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))) 3
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 23 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
def optimized360 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(360, 3, optimizedBody360_80)
theorem optimize360_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source360, oracle360) = optimized360 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize360_eq
end InitECandidate.Proofs.WordStages
