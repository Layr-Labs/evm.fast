import InitECandidate.Proofs.FrontendStages.Crep.Translate526
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody542_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody542_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody542_2 : CrepProg (BitVec 64) :=
.seq crepBody542_0 crepBody542_1

def crepBody542_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 7#64) crepBody542_2

def crepBody542_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody542_5 : CrepProg (BitVec 64) :=
.seq crepBody542_3 crepBody542_4

def crepBody542_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64]))) crepBody542_5 crepBody542_1

def crepBody542_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "frame_open" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]

def crepBody542_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "state_snapshot" []

def crepBody542_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody542_10 : CrepProg (BitVec 64) :=
.seq crepBody542_9 crepBody542_1

def crepBody542_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "scratch_release"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 208#64])]

def crepBody542_12 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody542_11

def crepBody542_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "frame_mem_release"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 224#64])]

def crepBody542_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody542_13

def crepBody542_15 : CrepProg (BitVec 64) :=
.seq crepBody542_12 crepBody542_14

def crepBody542_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody542_17 : CrepProg (BitVec 64) :=
.seq crepBody542_16 crepBody542_1

def crepBody542_18 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 1) crepBody542_17

def crepBody542_19 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]) crepBody542_18

def crepBody542_20 : CrepProg (BitVec 64) :=
.seq crepBody542_15 crepBody542_19

def crepBody542_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 2) crepBody542_17

def crepBody542_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]) crepBody542_21

def crepBody542_23 : CrepProg (BitVec 64) :=
.seq crepBody542_20 crepBody542_22

def crepBody542_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody542_25 : CrepProg (BitVec 64) :=
.seq crepBody542_24 crepBody542_1

def crepBody542_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 6) crepBody542_25

def crepBody542_27 : CrepProg (BitVec 64) :=
.seq crepBody542_26 crepBody542_4

def crepBody542_28 : CrepProg (BitVec 64) :=
.seq crepBody542_23 crepBody542_27

def crepBody542_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody542_28 crepBody542_1

def crepBody542_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "state_restore" [Flapjack.CrepExp.var 4]

def crepBody542_31 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody542_30

def crepBody542_32 : CrepProg (BitVec 64) :=
.seq crepBody542_29 crepBody542_31

def crepBody542_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 5) crepBody542_17

def crepBody542_34 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody542_33

def crepBody542_35 : CrepProg (BitVec 64) :=
.seq crepBody542_32 crepBody542_34

def crepBody542_36 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody542_17

def crepBody542_37 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 200#64]) crepBody542_36

def crepBody542_38 : CrepProg (BitVec 64) :=
.seq crepBody542_35 crepBody542_37

def crepBody542_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "refill_frame_state_gas" []

def crepBody542_40 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody542_39

def crepBody542_41 : CrepProg (BitVec 64) :=
.seq crepBody542_38 crepBody542_40

def crepBody542_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "frame_halt" [Flapjack.CrepExp.var 6]

def crepBody542_43 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody542_42

def crepBody542_44 : CrepProg (BitVec 64) :=
.seq crepBody542_41 crepBody542_43

def crepBody542_45 : CrepProg (BitVec 64) :=
.seq crepBody542_44 crepBody542_19

def crepBody542_46 : CrepProg (BitVec 64) :=
.seq crepBody542_45 crepBody542_22

def crepBody542_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody542_48 : CrepProg (BitVec 64) :=
.seq crepBody542_46 crepBody542_47

def crepBody542_49 : CrepProg (BitVec 64) :=
.seq crepBody542_10 crepBody542_48

def crepBody542_50 : CrepProg (BitVec 64) :=
.call (some (([7]), some ((8#64), crepBody542_49))) ("depth0_prepare") ([])

def crepBody542_51 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody542_50

def crepBody542_52 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody542_51

def crepBody542_53 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody542_52

def crepBody542_54 : CrepProg (BitVec 64) :=
.seq crepBody542_8 crepBody542_53

def crepBody542_55 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody542_54

def crepBody542_56 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody542_55 crepBody542_1

def crepBody542_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody542_58 : CrepProg (BitVec 64) :=
.seq crepBody542_57 crepBody542_1

def crepBody542_59 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody542_58

def crepBody542_60 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 24#64]) crepBody542_59

def crepBody542_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "frame_start" []

def crepBody542_62 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody542_61

def crepBody542_63 : CrepProg (BitVec 64) :=
.seq crepBody542_60 crepBody542_62

def crepBody542_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "run_frames" []

def crepBody542_65 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody542_64

def crepBody542_66 : CrepProg (BitVec 64) :=
.seq crepBody542_63 crepBody542_65

def crepBody542_67 : CrepProg (BitVec 64) :=
.seq crepBody542_66 crepBody542_47

def crepBody542_68 : CrepProg (BitVec 64) :=
.seq crepBody542_8 crepBody542_67

def crepBody542_69 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody542_68

def crepBody542_70 : CrepProg (BitVec 64) :=
.seq crepBody542_56 crepBody542_69

def crepBody542_71 : CrepProg (BitVec 64) :=
.seq crepBody542_7 crepBody542_70

def crepBody542_72 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody542_71

def crepBody542_73 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64])) crepBody542_72

def crepBody542_74 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64])) crepBody542_73

def crepBody542_75 : CrepProg (BitVec 64) :=
.seq crepBody542_6 crepBody542_74

def data542 : CrepProg (BitVec 64) := crepBody542_75
def output542 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8], [0], crepProgToHOL data542)
end InitECandidate.Proofs.FrontendStages.Crep
