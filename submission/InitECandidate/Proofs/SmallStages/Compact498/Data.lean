import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact498
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0 (Flapjack.Spt.ls 3))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
        Flapjack.Spt.ln)))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3000#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17)]

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 0#64)

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 61)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_24, 498, 2)) (some 496) ([2]) (some (2, body2_36, 498, 3))

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_5

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 57), (85, 69)]

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 73)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 0#64)

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_5

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 17), (85, 77)]

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 33)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 21)]

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 29)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 81)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body2_54 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_5

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 89 [2]

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_80

def pass2 : WordLangProgHOL (BitVec 64) := body2_81
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3000#64)

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_9, 498, 2)) (some 496) ([2]) (some (2, body3_15, 498, 3))

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_4

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 57)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 17)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body3_22 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_4

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 89 [2]

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_33

def pass3 : WordLangProgHOL (BitVec 64) := body3_34
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3000#64)

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_9, 498, 2)) (some 496) ([2]) (some (2, body4_15, 498, 3))

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_4

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 57)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 17)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body4_22 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_4

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 89 [2]

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_33

def pass4 : WordLangProgHOL (BitVec 64) := body4_34
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3000#64)

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_9, 498, 2)) (some 496) ([2]) (some (2, body5_15, 498, 3))

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_4

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 57)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 17)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body5_22 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_4

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 89 [2]

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_33

def pass5 : WordLangProgHOL (BitVec 64) := body5_34
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3000#64)

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_9, 498, 2)) (some 496) ([2]) (some (2, body6_15, 498, 3))

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_4

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 57)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 17)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body6_22 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_4

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 89 [2]

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_33

def pass6 : WordLangProgHOL (BitVec 64) := body6_34
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 4), (17, 0), (21, 2), (25, 4)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3000#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (51, 17), (45, 21)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (65, 2), (57, 51)]

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_7 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_6

def body7_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_4, 498, 2)) (some 496) ([2]) (some (2, body7_7, 498, 3))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 57)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_9

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_11

def body7_13 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_12

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 17)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body7_13 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 89 [2]

def body7_20 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_19

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_24

def pass7 : WordLangProgHOL (BitVec 64) := body7_25
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 4), (17, 0), (21, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3000#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (51, 17)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (57, 51)]

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_7 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_6

def body8_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_4, 498, 2)) (some 496) ([2]) (some (2, body8_7, 498, 3))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 57)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_9

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_11

def body8_13 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_12

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 17)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body8_13 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 89 [2]

def body8_20 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_19

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_24

def pass8 : WordLangProgHOL (BitVec 64) := body8_25
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3000#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_7 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_6

def body10_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_4, 498, 2)) (some 496) ([2]) (some (2, body10_7, 498, 3))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_11

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) body10_13 body10_10

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_18

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_22

def pass10 : WordLangProgHOL (BitVec 64) := body10_23
end InitECandidate.Proofs.SmallStages.Compact498
