import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source859
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact859
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 24)))
              23
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 4)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 3)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              Flapjack.Spt.ln))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 25), (47, 33), (51, 29), (55, 37)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 43), (65, 47), (69, 51), (73, 55)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 81)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_13, 859, 2)) (some 69) ([]) (some (2, body2_25, 859, 3))

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 65)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 5#64)))

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 8#64)))

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(107, 61), (111, 93), (115, 69), (119, 85), (123, 73)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_5

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_16

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 153)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_48, 859, 4)) (some 68) ([2]) (some (2, body2_59, 859, 5))

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_29

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_29

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 129), (173, 133), (177, 137), (181, 161), (185, 141), (189, 145), (193, 165)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 173)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 1#64)

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_29

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 209 1#64)

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 197)]

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 4#64)))

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 217 (Flapjack.WordRegImm.reg 221)))

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 213)]

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 4#64)))

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 221)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 237 (Flapjack.WordRegImm.reg 241)))

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 233)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 5#64)))

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 181)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 257 (Flapjack.WordRegImm.reg 261)))

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(271, 169), (275, 201), (279, 241), (283, 261), (287, 185), (291, 189), (295, 253)]

def body2_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 229), (4, 249), (6, 265)]

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_5

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 329)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64)

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 2)]

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 333)]

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_16

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 333)]

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_116, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body2_127, 859, 7))

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_29

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 325)]

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 349 345 (Flapjack.WordRegImm.imm 1#64)))

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 349)]

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 301), (173, 305), (177, 309), (181, 313), (185, 317), (189, 321), (193, 353)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(393, 301), (389, 341), (385, 305), (381, 309), (377, 313), (373, 317), (369, 321), (365, 353)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 353)]

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(409, 345)]

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 0#64)

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_29

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 201)]

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(393, 169), (389, 357), (385, 201), (381, 177), (377, 181), (373, 185), (369, 189), (365, 197)]

def body2_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361)]

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 201)]

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 197 (Flapjack.WordRegImm.reg 201) body2_153 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_29

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 393), (173, 385), (177, 381), (181, 377), (185, 373), (189, 369), (193, 365)]

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body2_177 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_29

def body2_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 181)]

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 173)]

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 5#64)))

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 189)]

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(431, 169), (435, 185)]

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413), (4, 421), (6, 425)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 431), (445, 435)]

def body2_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 2)]

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_5

def body2_195 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_194

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 449)]

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 461 0#64)

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(453, 2)]

def body2_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 453)]

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_203 body2_16

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_202 body2_204

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_205

def body2_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 0#64)

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_207

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 453)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_201, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body2_212, 859, 9))

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_189 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_29

def body2_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 445)]

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(471, 441)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 471)]

def body2_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 2)]

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_5

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(489, 481)]

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 0#64)

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_229

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(485, 2)]

def body2_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485)]

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_16

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(493, 485)]

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_240

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_231, 859, 10)) (some 70) ([2]) (some (2, body2_242, 859, 11))

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_29

def body2_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 497)]

def body2_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 477 [2]

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_253

def pass2 : WordLangProgHOL (BitVec 64) := body2_254
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 25), (47, 33), (51, 29), (55, 37)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 43), (65, 47), (69, 51), (73, 55)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_6, 859, 2)) (some 69) ([]) (some (2, body3_14, 859, 3))

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 65)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 5#64)))

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 8#64)))

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(107, 61), (111, 93), (115, 69), (119, 85), (123, 73)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_9

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_31, 859, 4)) (some 68) ([2]) (some (2, body3_38, 859, 5))

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_17

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_17

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 129), (173, 133), (177, 137), (181, 161), (185, 141), (189, 145), (193, 165)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 173)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 197)]

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 4#64)))

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 217 (Flapjack.WordRegImm.reg 221)))

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 213)]

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 4#64)))

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 221)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 237 (Flapjack.WordRegImm.reg 241)))

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 233)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 5#64)))

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 181)]

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 257 (Flapjack.WordRegImm.reg 261)))

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(271, 169), (275, 201), (279, 241), (283, 261), (287, 185), (291, 189), (295, 253)]

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 229), (4, 249), (6, 265)]

def body3_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 2)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 333)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_9

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_81, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body3_86, 859, 7))

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_80 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_17

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 325)]

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 349 345 (Flapjack.WordRegImm.imm 1#64)))

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 349)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 301), (173, 305), (177, 309), (181, 313), (185, 317), (189, 321), (193, 353)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_100

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 301), (385, 305), (381, 309), (377, 313), (373, 317), (369, 321), (365, 353)]

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 201)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 169), (385, 201), (381, 177), (377, 181), (373, 185), (369, 189), (365, 197)]

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 197 (Flapjack.WordRegImm.reg 201) body3_103 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_111 body3_17

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 393), (173, 385), (177, 381), (181, 377), (185, 373), (189, 369), (193, 365)]

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body3_114 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_17

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 181)]

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 173)]

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 5#64)))

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_123

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 189)]

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(431, 169), (435, 185)]

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413), (4, 421), (6, 425)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 431), (445, 435)]

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(453, 2)]

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 453)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_9

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_129, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body3_134, 859, 9))

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_136

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_17

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 445)]

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_140

def body3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(471, 441)]

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body3_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 471)]

def body3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(485, 2)]

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485)]

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_9

def body3_148 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_147

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_144 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_144, 859, 10)) (some 70) ([2]) (some (2, body3_149, 859, 11))

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_152

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_17

def body3_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 497)]

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 477 [2]

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_160

def pass3 : WordLangProgHOL (BitVec 64) := body3_161
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 25), (47, 33), (51, 29), (55, 37)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 43), (65, 47), (69, 51), (73, 55)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_6, 859, 2)) (some 69) ([]) (some (2, body4_14, 859, 3))

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 65)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 5#64)))

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 8#64)))

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(107, 61), (111, 93), (115, 69), (119, 85), (123, 73)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_9

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_31, 859, 4)) (some 68) ([2]) (some (2, body4_38, 859, 5))

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_17

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_17

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 129), (173, 133), (177, 137), (181, 161), (185, 141), (189, 145), (193, 165)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 173)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 197)]

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 4#64)))

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 217 (Flapjack.WordRegImm.reg 221)))

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 213)]

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 221)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 233)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 5#64)))

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 181)]

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 257 (Flapjack.WordRegImm.reg 261)))

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(271, 169), (275, 201), (279, 241), (283, 261), (287, 185), (291, 189), (295, 253)]

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 229), (4, 249), (6, 265)]

def body4_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 2)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 333)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_9

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_81, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body4_86, 859, 7))

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_80 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_17

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 325)]

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 349 345 (Flapjack.WordRegImm.imm 1#64)))

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 349)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 301), (173, 305), (177, 309), (181, 313), (185, 317), (189, 321), (193, 353)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_100

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 301), (385, 305), (381, 309), (377, 313), (373, 317), (369, 321), (365, 353)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 201)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 169), (385, 201), (381, 177), (377, 181), (373, 185), (369, 189), (365, 197)]

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 197 (Flapjack.WordRegImm.reg 201) body4_103 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_111 body4_17

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 393), (173, 385), (177, 381), (181, 377), (185, 373), (189, 369), (193, 365)]

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body4_114 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_17

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 181)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 173)]

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 5#64)))

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_123

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 189)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(431, 169), (435, 185)]

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413), (4, 421), (6, 425)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 431), (445, 435)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(453, 2)]

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 453)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_9

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_129, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body4_134, 859, 9))

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_136

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_17

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 445)]

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_140

def body4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(471, 441)]

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body4_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 471)]

def body4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(485, 2)]

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485)]

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_9

def body4_148 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_147

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_144 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_144, 859, 10)) (some 70) ([2]) (some (2, body4_149, 859, 11))

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_152

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_17

def body4_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 497)]

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 477 [2]

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_160

def pass4 : WordLangProgHOL (BitVec 64) := body4_161
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 25), (47, 33), (51, 29), (55, 37)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 43), (65, 47), (69, 51), (73, 55)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_6, 859, 2)) (some 69) ([]) (some (2, body5_14, 859, 3))

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 65)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 5#64)))

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 8#64)))

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(107, 61), (111, 93), (115, 69), (119, 85), (123, 73)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_9

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_31, 859, 4)) (some 68) ([2]) (some (2, body5_38, 859, 5))

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_17

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_17

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 129), (173, 133), (177, 137), (181, 161), (185, 141), (189, 145), (193, 165)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 173)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 197)]

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 4#64)))

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 217 (Flapjack.WordRegImm.reg 221)))

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 213)]

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 221)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 233)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 5#64)))

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 181)]

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 257 (Flapjack.WordRegImm.reg 261)))

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(271, 169), (275, 201), (279, 241), (283, 261), (287, 185), (291, 189), (295, 253)]

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 229), (4, 249), (6, 265)]

def body5_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 2)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 333)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_9

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_81, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body5_86, 859, 7))

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_80 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_17

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 325)]

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 349 345 (Flapjack.WordRegImm.imm 1#64)))

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 349)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 301), (173, 305), (177, 309), (181, 313), (185, 317), (189, 321), (193, 353)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_100

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 169), (385, 173), (381, 177), (377, 181), (373, 185), (369, 189), (365, 193)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 201)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 169), (385, 173), (381, 177), (377, 181), (373, 185), (369, 189), (365, 197)]

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 197 (Flapjack.WordRegImm.reg 201) body5_103 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_111 body5_17

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 393), (173, 385), (177, 381), (181, 377), (185, 373), (189, 369), (193, 365)]

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body5_114 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_17

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 181)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 173)]

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 5#64)))

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_123

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 189)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(431, 169), (435, 185)]

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413), (4, 421), (6, 425)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 431), (445, 435)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(453, 2)]

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 453)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_9

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_129, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body5_134, 859, 9))

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_136

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_17

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 445)]

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_140

def body5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(471, 441)]

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body5_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 471)]

def body5_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(485, 2)]

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485)]

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_9

def body5_148 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_147

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_144 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_144, 859, 10)) (some 70) ([2]) (some (2, body5_149, 859, 11))

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_152

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_17

def body5_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 497)]

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 477 [2]

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_160

def pass5 : WordLangProgHOL (BitVec 64) := body5_161
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 25), (47, 33), (51, 29), (55, 37)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 43), (65, 47), (69, 51), (73, 55)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_6, 859, 2)) (some 69) ([]) (some (2, body6_14, 859, 3))

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 65)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 5#64)))

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 8#64)))

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(107, 61), (111, 93), (115, 69), (119, 85), (123, 73)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_9

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_31, 859, 4)) (some 68) ([2]) (some (2, body6_38, 859, 5))

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_17

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_17

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 129), (173, 133), (177, 137), (181, 161), (185, 141), (189, 145), (193, 165)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 173)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 197)]

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 4#64)))

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 217 (Flapjack.WordRegImm.reg 221)))

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 213)]

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 221)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 233)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 5#64)))

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 181)]

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 257 (Flapjack.WordRegImm.reg 261)))

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(271, 169), (275, 201), (279, 241), (283, 261), (287, 185), (291, 189), (295, 253)]

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 229), (4, 249), (6, 265)]

def body6_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 2)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 333)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_9

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_81, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body6_86, 859, 7))

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_80 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_17

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 325)]

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 349 345 (Flapjack.WordRegImm.imm 1#64)))

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 349)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 301), (173, 305), (177, 309), (181, 313), (185, 317), (189, 321), (193, 353)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_100

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 169), (385, 173), (381, 177), (377, 181), (373, 185), (369, 189), (365, 193)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 201)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 169), (385, 173), (381, 177), (377, 181), (373, 185), (369, 189), (365, 197)]

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 197 (Flapjack.WordRegImm.reg 201) body6_103 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_111 body6_17

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 393), (173, 385), (177, 381), (181, 377), (185, 373), (189, 369), (193, 365)]

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body6_114 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_17

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 181)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 173)]

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 5#64)))

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_123

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 189)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(431, 169), (435, 185)]

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413), (4, 421), (6, 425)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 431), (445, 435)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(453, 2)]

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 453)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_9

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_129, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body6_134, 859, 9))

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_136

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_17

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 445)]

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_140

def body6_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(471, 441)]

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body6_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 471)]

def body6_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(485, 2)]

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485)]

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_9

def body6_148 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_147

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_144 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_144, 859, 10)) (some 70) ([2]) (some (2, body6_149, 859, 11))

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_152

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_17

def body6_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 497)]

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 477 [2]

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_160

def pass6 : WordLangProgHOL (BitVec 64) := body6_161
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(43, 0), (47, 4), (51, 2), (55, 6), (25, 0), (29, 2), (33, 4), (37, 6)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2), (77, 2), (61, 43), (65, 47), (69, 51), (73, 55)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (81, 2), (61, 43), (65, 47), (69, 51), (73, 55)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_1, 859, 2)) (some 69) ([]) (some (2, body7_4, 859, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 65)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 5#64)))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 8#64)))

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101), (107, 61), (111, 93), (115, 69), (119, 85), (123, 73)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2), (149, 2), (129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (153, 2), (129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_3

def body7_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_11, 859, 4)) (some 68) ([2]) (some (2, body7_13, 859, 5))

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 129), (173, 133), (177, 137), (181, 161), (185, 141), (189, 145), (193, 165)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 173), (197, 193)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 197)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 4#64)))

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 217 (Flapjack.WordRegImm.reg 221)))

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225), (241, 221), (237, 217), (233, 213)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 233)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 5#64)))

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 181)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 257 (Flapjack.WordRegImm.reg 261)))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 229), (4, 249), (6, 265), (271, 169), (275, 201), (279, 241), (283, 261), (287, 185), (291, 189), (295, 253)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (333, 2), (301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_3

def body7_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_30, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body7_32, 859, 7))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 325)]

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 349 345 (Flapjack.WordRegImm.imm 1#64)))

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(169, 301), (173, 305), (177, 309), (181, 313), (185, 317), (189, 321), (193, 349), (353, 349)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 201)]

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 197 (Flapjack.WordRegImm.reg 201) body7_55 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 393), (173, 385), (177, 381), (181, 377), (185, 373), (189, 369), (193, 365)]

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body7_64 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 173), (413, 181)]

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 5#64)))

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413), (4, 421), (6, 189), (431, 169), (435, 185), (425, 189)]

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 431), (445, 435)]

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (453, 2), (441, 431), (445, 435)]

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_3

def body7_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_69, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body7_71, 859, 9))

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 445), (471, 441), (465, 445)]

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 471)]

def body7_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (485, 2), (477, 471)]

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_75 body7_3

def body7_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_74, 859, 10)) (some 70) ([2]) (some (2, body7_76, 859, 11))

def body7_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)

def body7_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 497)]

def body7_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 477 [2]

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_78 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_77 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_103

def pass7 : WordLangProgHOL (BitVec 64) := body7_104
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(43, 0), (47, 4), (51, 2), (55, 6)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2), (61, 43), (65, 47), (69, 51), (73, 55)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (61, 43), (65, 47), (69, 51), (73, 55)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_1, 859, 2)) (some 69) ([]) (some (2, body8_4, 859, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 65)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 5#64)))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 8#64)))

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101), (107, 61), (111, 93), (115, 69), (119, 85), (123, 73)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2), (129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (129, 107), (133, 111), (137, 115), (141, 119), (145, 123)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_3

def body8_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_11, 859, 4)) (some 68) ([2]) (some (2, body8_13, 859, 5))

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 129), (173, 133), (177, 137), (181, 161), (185, 141), (189, 145), (193, 165)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 173), (197, 193)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 197)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 4#64)))

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 217 (Flapjack.WordRegImm.reg 221)))

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225), (241, 221), (233, 213)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 233)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 5#64)))

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 181)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 257 (Flapjack.WordRegImm.reg 261)))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 229), (4, 249), (6, 265), (271, 169), (275, 201), (279, 241), (283, 261), (287, 185), (291, 189), (295, 253)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (301, 271), (305, 275), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_3

def body8_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_30, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body8_32, 859, 7))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 325)]

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 349 345 (Flapjack.WordRegImm.imm 1#64)))

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 301), (173, 305), (177, 309), (181, 313), (185, 317), (189, 321), (193, 349)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 201)]

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 197 (Flapjack.WordRegImm.reg 201) body8_55 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 393), (173, 385), (177, 381), (181, 377), (185, 373), (189, 369), (193, 365)]

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body8_64 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 173), (413, 181)]

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 5#64)))

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413), (4, 421), (6, 189), (431, 169), (435, 185)]

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 431), (445, 435)]

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (441, 431), (445, 435)]

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_3

def body8_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_69, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body8_71, 859, 9))

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 445), (471, 441)]

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 471)]

def body8_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (477, 471)]

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_75 body8_3

def body8_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_74, 859, 10)) (some 70) ([2]) (some (2, body8_76, 859, 11))

def body8_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)

def body8_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 497)]

def body8_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 477 [2]

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_78 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_77 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_73 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_72 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_93

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_94

def body8_96 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_95

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_103

def pass8 : WordLangProgHOL (BitVec 64) := body8_104
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (48, 2), (52, 6)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (46, 46), (0, 44), (48, 48), (52, 52)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (48, 48), (52, 52)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 859, 2)) (some 69) ([]) (some (2, body10_4, 859, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 4), (52, 52)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_3

def body10_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_11, 859, 4)) (some 68) ([2]) (some (2, body10_13, 859, 5))

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 0), (4, 4), (10, 10), (48, 48), (44, 44), (8, 8)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 4#64)))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 4)))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (50, 4), (8, 8)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 5#64)))

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 10)))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 0), (48, 50), (50, 10), (52, 48), (54, 44), (56, 8)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (4, 48), (10, 50), (48, 52), (12, 54), (6, 56)]

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (10, 50), (48, 52), (12, 54), (6, 56)]

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_3

def body10_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_29, 859, 6)) (some 153) ([2, 4, 6]) (some (2, body10_31, 859, 7))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 1#64)))

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (0, 0), (4, 4), (10, 10), (48, 48), (44, 12), (8, 8)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_55 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) body10_54 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2), (0, 0), (4, 4), (10, 10), (48, 6), (44, 12), (8, 8)]

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      (Flapjack.Spt.ls ()))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln) ()
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
  () Flapjack.Spt.ln) body10_63 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      (Flapjack.Spt.ls ()))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
  () Flapjack.Spt.ln)

def body10_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 10)]

def body10_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def body10_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 44), (44, 46), (46, 48)]

def body10_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def body10_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_69 body10_3

def body10_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_68, 859, 8)) (some 153) ([2, 4, 6]) (some (2, body10_70, 859, 9))

def body10_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def body10_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_74 body10_3

def body10_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_73, 859, 10)) (some 70) ([2]) (some (2, body10_75, 859, 11))

def body10_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_78 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_77 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_76 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_72 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_71 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_67 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_66 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_64 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_97

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_100

def body10_102 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_101

def body10_103 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_102

def pass10 : WordLangProgHOL (BitVec 64) := body10_103
end InitECandidate.Proofs.SmallStages.Compact859
