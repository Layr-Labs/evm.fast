import InitECandidate.Proofs.FrontendStages.Crep.Translate521
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody537_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody537_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody537_2 : CrepProg (BitVec 64) :=
.seq crepBody537_0 crepBody537_1

def crepBody537_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "state_restore" [Flapjack.CrepExp.var 12]

def crepBody537_4 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody537_3

def crepBody537_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "refill_frame_state_gas" []

def crepBody537_6 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody537_5

def crepBody537_7 : CrepProg (BitVec 64) :=
.seq crepBody537_4 crepBody537_6

def crepBody537_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "frame_halt" [Flapjack.CrepExp.var 13]

def crepBody537_9 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody537_8

def crepBody537_10 : CrepProg (BitVec 64) :=
.seq crepBody537_7 crepBody537_9

def crepBody537_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody537_12 : CrepProg (BitVec 64) :=
.seq crepBody537_11 crepBody537_1

def crepBody537_13 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody537_12

def crepBody537_14 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody537_13

def crepBody537_15 : CrepProg (BitVec 64) :=
.seq crepBody537_10 crepBody537_14

def crepBody537_16 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody537_12

def crepBody537_17 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody537_16

def crepBody537_18 : CrepProg (BitVec 64) :=
.seq crepBody537_15 crepBody537_17

def crepBody537_19 : CrepProg (BitVec 64) :=
.seq crepBody537_2 crepBody537_18

def crepBody537_20 : CrepProg (BitVec 64) :=
.call (some (([14]), some ((8#64), crepBody537_19))) ("create_finish") ([Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2])

def crepBody537_21 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody537_20

def crepBody537_22 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_21

def crepBody537_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "state_restore" [Flapjack.CrepExp.var 12]

def crepBody537_24 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_23

def crepBody537_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 160#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody537_22 crepBody537_24

def crepBody537_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody537_25

def crepBody537_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 2#64)) crepBody537_26 crepBody537_1

def crepBody537_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody537_29 : CrepProg (BitVec 64) :=
.seq crepBody537_28 crepBody537_1

def crepBody537_30 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 3) crepBody537_29

def crepBody537_31 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]) crepBody537_30

def crepBody537_32 : CrepProg (BitVec 64) :=
.seq crepBody537_27 crepBody537_31

def crepBody537_33 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody537_29

def crepBody537_34 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]) crepBody537_33

def crepBody537_35 : CrepProg (BitVec 64) :=
.seq crepBody537_32 crepBody537_34

def crepBody537_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "rollback_child_access" [Flapjack.CrepExp.var 2]

def crepBody537_37 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_36

def crepBody537_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "incorporate_child_on_error" [Flapjack.CrepExp.var 2]

def crepBody537_39 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_38

def crepBody537_40 : CrepProg (BitVec 64) :=
.seq crepBody537_37 crepBody537_39

def crepBody537_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "credit_state_gas_refund" [Flapjack.CrepExp.const 183600#64]

def crepBody537_42 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_41

def crepBody537_43 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody537_42 crepBody537_1

def crepBody537_44 : CrepProg (BitVec 64) :=
.seq crepBody537_40 crepBody537_43

def crepBody537_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "set_retdata"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 120#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 128#64])]

def crepBody537_46 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_45

def crepBody537_47 : CrepProg (BitVec 64) :=
.seq crepBody537_44 crepBody537_46

def crepBody537_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody537_49 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_48

def crepBody537_50 : CrepProg (BitVec 64) :=
.seq crepBody537_47 crepBody537_49

def crepBody537_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "incorporate_child_on_success" [Flapjack.CrepExp.var 2]

def crepBody537_52 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_51

def crepBody537_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "set_retdata" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 0#64]

def crepBody537_54 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_53

def crepBody537_55 : CrepProg (BitVec 64) :=
.seq crepBody537_52 crepBody537_54

def crepBody537_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "address_to_u256" [Flapjack.CrepExp.var 11]

def crepBody537_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "stack_push"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody537_58 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody537_57

def crepBody537_59 : CrepProg (BitVec 64) :=
.seq crepBody537_56 crepBody537_58

def crepBody537_60 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody537_59

def crepBody537_61 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody537_60

def crepBody537_62 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody537_61

def crepBody537_63 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_62

def crepBody537_64 : CrepProg (BitVec 64) :=
.seq crepBody537_55 crepBody537_63

def crepBody537_65 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 160#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody537_50 crepBody537_64

def crepBody537_66 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody537_65

def crepBody537_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "rollback_child_access" [Flapjack.CrepExp.var 2]

def crepBody537_68 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_67

def crepBody537_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "incorporate_child_on_error" [Flapjack.CrepExp.var 2]

def crepBody537_70 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_69

def crepBody537_71 : CrepProg (BitVec 64) :=
.seq crepBody537_68 crepBody537_70

def crepBody537_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "credit_state_gas_refund" [Flapjack.CrepExp.const 183600#64]

def crepBody537_73 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_72

def crepBody537_74 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody537_73 crepBody537_1

def crepBody537_75 : CrepProg (BitVec 64) :=
.seq crepBody537_71 crepBody537_74

def crepBody537_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "set_retdata"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 120#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 128#64])]

def crepBody537_77 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_76

def crepBody537_78 : CrepProg (BitVec 64) :=
.seq crepBody537_75 crepBody537_77

def crepBody537_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody537_80 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_79

def crepBody537_81 : CrepProg (BitVec 64) :=
.seq crepBody537_78 crepBody537_80

def crepBody537_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "incorporate_child_on_success" [Flapjack.CrepExp.var 2]

def crepBody537_83 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_82

def crepBody537_84 : CrepProg (BitVec 64) :=
.seq crepBody537_83 crepBody537_77

def crepBody537_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "stack_push"
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody537_86 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_85

def crepBody537_87 : CrepProg (BitVec 64) :=
.seq crepBody537_84 crepBody537_86

def crepBody537_88 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 160#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody537_81 crepBody537_87

def crepBody537_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "min"
  [Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 128#64])]

def crepBody537_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 9],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 144#64]),
    Flapjack.CrepExp.var 12]

def crepBody537_91 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody537_90

def crepBody537_92 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64)) crepBody537_91 crepBody537_1

def crepBody537_93 : CrepProg (BitVec 64) :=
.seq crepBody537_89 crepBody537_92

def crepBody537_94 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_93

def crepBody537_95 : CrepProg (BitVec 64) :=
.seq crepBody537_88 crepBody537_94

def crepBody537_96 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 2#64)) crepBody537_66 crepBody537_95

def crepBody537_97 : CrepProg (BitVec 64) :=
.seq crepBody537_35 crepBody537_96

def crepBody537_98 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "scratch_release" [Flapjack.CrepExp.var 7]

def crepBody537_99 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_98

def crepBody537_100 : CrepProg (BitVec 64) :=
.seq crepBody537_97 crepBody537_99

def crepBody537_101 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "frame_mem_release" [Flapjack.CrepExp.var 8]

def crepBody537_102 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_101

def crepBody537_103 : CrepProg (BitVec 64) :=
.seq crepBody537_100 crepBody537_102

def crepBody537_104 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody537_105 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody537_104

def crepBody537_106 : CrepProg (BitVec 64) :=
.seq crepBody537_103 crepBody537_105

def crepBody537_107 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody537_108 : CrepProg (BitVec 64) :=
.seq crepBody537_106 crepBody537_107

def crepBody537_109 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64])) crepBody537_108

def crepBody537_110 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 80#64])) crepBody537_109

def crepBody537_111 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 72#64])) crepBody537_110

def crepBody537_112 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64])) crepBody537_111

def crepBody537_113 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody537_112

def crepBody537_114 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64])) crepBody537_113

def crepBody537_115 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody537_114

def crepBody537_116 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody537_115

def crepBody537_117 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64])) crepBody537_116

def crepBody537_118 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64])) crepBody537_117

def crepBody537_119 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64])) crepBody537_118

def data537 : CrepProg (BitVec 64) := crepBody537_119
def output537 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 105#8, 110#8, 105#8, 115#8, 104#8, 95#8, 99#8, 104#8, 105#8, 108#8, 100#8], [], crepProgToHOL data537)
end InitECandidate.Proofs.FrontendStages.Crep
