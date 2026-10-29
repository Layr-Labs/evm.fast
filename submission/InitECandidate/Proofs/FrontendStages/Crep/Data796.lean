import InitECandidate.Proofs.FrontendStages.Crep.Translate780
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody796_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "state_fresh_tx" []

def crepBody796_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody796_0

def crepBody796_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "ext_code_of" [Flapjack.CrepExp.var 0]

def crepBody796_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "te_new" []

def crepBody796_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody796_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody796_6 : CrepProg (BitVec 64) :=
.seq crepBody796_4 crepBody796_5

def crepBody796_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 304#64])) crepBody796_6

def crepBody796_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 0#64]) crepBody796_7

def crepBody796_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 0) crepBody796_6

def crepBody796_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]) crepBody796_9

def crepBody796_11 : CrepProg (BitVec 64) :=
.seq crepBody796_8 crepBody796_10

def crepBody796_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 8)

def crepBody796_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 9)

def crepBody796_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 10)

def crepBody796_15 : CrepProg (BitVec 64) :=
.seq crepBody796_14 crepBody796_5

def crepBody796_16 : CrepProg (BitVec 64) :=
.seq crepBody796_13 crepBody796_15

def crepBody796_17 : CrepProg (BitVec 64) :=
.seq crepBody796_12 crepBody796_16

def crepBody796_18 : CrepProg (BitVec 64) :=
.seq crepBody796_4 crepBody796_17

def crepBody796_19 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody796_18

def crepBody796_20 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody796_19

def crepBody796_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody796_20

def crepBody796_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
      Flapjack.CrepExp.const 48#64])) crepBody796_21

def crepBody796_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 48#64]) crepBody796_22

def crepBody796_24 : CrepProg (BitVec 64) :=
.seq crepBody796_11 crepBody796_23

def crepBody796_25 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 30000000#64) crepBody796_6

def crepBody796_26 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 80#64]) crepBody796_25

def crepBody796_27 : CrepProg (BitVec 64) :=
.seq crepBody796_24 crepBody796_26

def crepBody796_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 97920#64, Flapjack.CrepExp.const 16#64]) crepBody796_6

def crepBody796_29 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 88#64]) crepBody796_28

def crepBody796_30 : CrepProg (BitVec 64) :=
.seq crepBody796_27 crepBody796_29

def crepBody796_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "msg_new" []

def crepBody796_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody796_33 : CrepProg (BitVec 64) :=
.seq crepBody796_32 crepBody796_5

def crepBody796_34 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64])) crepBody796_33

def crepBody796_35 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 0#64]) crepBody796_34

def crepBody796_36 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 5) crepBody796_33

def crepBody796_37 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]) crepBody796_36

def crepBody796_38 : CrepProg (BitVec 64) :=
.seq crepBody796_35 crepBody796_37

def crepBody796_39 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 304#64])) crepBody796_33

def crepBody796_40 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64]) crepBody796_39

def crepBody796_41 : CrepProg (BitVec 64) :=
.seq crepBody796_38 crepBody796_40

def crepBody796_42 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 0) crepBody796_33

def crepBody796_43 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64]) crepBody796_42

def crepBody796_44 : CrepProg (BitVec 64) :=
.seq crepBody796_41 crepBody796_43

def crepBody796_45 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]) crepBody796_42

def crepBody796_46 : CrepProg (BitVec 64) :=
.seq crepBody796_44 crepBody796_45

def crepBody796_47 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 30000000#64) crepBody796_33

def crepBody796_48 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 40#64]) crepBody796_47

def crepBody796_49 : CrepProg (BitVec 64) :=
.seq crepBody796_46 crepBody796_48

def crepBody796_50 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 97920#64, Flapjack.CrepExp.const 16#64]) crepBody796_33

def crepBody796_51 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64]) crepBody796_50

def crepBody796_52 : CrepProg (BitVec 64) :=
.seq crepBody796_49 crepBody796_51

def crepBody796_53 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 1) crepBody796_33

def crepBody796_54 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 88#64]) crepBody796_53

def crepBody796_55 : CrepProg (BitVec 64) :=
.seq crepBody796_52 crepBody796_54

def crepBody796_56 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 2) crepBody796_33

def crepBody796_57 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 96#64]) crepBody796_56

def crepBody796_58 : CrepProg (BitVec 64) :=
.seq crepBody796_55 crepBody796_57

def crepBody796_59 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 104#64]) crepBody796_42

def crepBody796_60 : CrepProg (BitVec 64) :=
.seq crepBody796_58 crepBody796_59

def crepBody796_61 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 3) crepBody796_33

def crepBody796_62 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 112#64]) crepBody796_61

def crepBody796_63 : CrepProg (BitVec 64) :=
.seq crepBody796_60 crepBody796_62

def crepBody796_64 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 4) crepBody796_33

def crepBody796_65 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 120#64]) crepBody796_64

def crepBody796_66 : CrepProg (BitVec 64) :=
.seq crepBody796_63 crepBody796_65

def crepBody796_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 8#64]

def crepBody796_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody796_69 : CrepProg (BitVec 64) :=
.seq crepBody796_68 crepBody796_5

def crepBody796_70 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody796_69

def crepBody796_71 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 152#64]) crepBody796_70

def crepBody796_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htab_new" [Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 8#64]

def crepBody796_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody796_74 : CrepProg (BitVec 64) :=
.seq crepBody796_73 crepBody796_5

def crepBody796_75 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody796_74

def crepBody796_76 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 160#64]) crepBody796_75

def crepBody796_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "process_message_call" [Flapjack.CrepExp.var 6]

def crepBody796_78 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "incorporate_tx_into_block" []

def crepBody796_79 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody796_78

def crepBody796_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]]

def crepBody796_81 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "memcpy"
  [Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.var 11]

def crepBody796_82 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody796_81

def crepBody796_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody796_84 : CrepProg (BitVec 64) :=
.seq crepBody796_83 crepBody796_5

def crepBody796_85 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 12) crepBody796_84

def crepBody796_86 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 40#64]) crepBody796_85

def crepBody796_87 : CrepProg (BitVec 64) :=
.seq crepBody796_82 crepBody796_86

def crepBody796_88 : CrepProg (BitVec 64) :=
.seq crepBody796_80 crepBody796_87

def crepBody796_89 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody796_88

def crepBody796_90 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 11)) crepBody796_89 crepBody796_5

def crepBody796_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "scratch_release" [Flapjack.CrepExp.var 10]

def crepBody796_92 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody796_91

def crepBody796_93 : CrepProg (BitVec 64) :=
.seq crepBody796_90 crepBody796_92

def crepBody796_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "frame_mem_release"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 88#64])]

def crepBody796_95 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody796_94

def crepBody796_96 : CrepProg (BitVec 64) :=
.seq crepBody796_93 crepBody796_95

def crepBody796_97 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 48#64])) crepBody796_96

def crepBody796_98 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody796_97 crepBody796_5

def crepBody796_99 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 9]

def crepBody796_100 : CrepProg (BitVec 64) :=
.seq crepBody796_98 crepBody796_99

def crepBody796_101 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 80#64])) crepBody796_100

def crepBody796_102 : CrepProg (BitVec 64) :=
.seq crepBody796_79 crepBody796_101

def crepBody796_103 : CrepProg (BitVec 64) :=
.seq crepBody796_77 crepBody796_102

def crepBody796_104 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody796_103

def crepBody796_105 : CrepProg (BitVec 64) :=
.seq crepBody796_76 crepBody796_104

def crepBody796_106 : CrepProg (BitVec 64) :=
.seq crepBody796_72 crepBody796_105

def crepBody796_107 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody796_106

def crepBody796_108 : CrepProg (BitVec 64) :=
.seq crepBody796_71 crepBody796_107

def crepBody796_109 : CrepProg (BitVec 64) :=
.seq crepBody796_67 crepBody796_108

def crepBody796_110 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody796_109

def crepBody796_111 : CrepProg (BitVec 64) :=
.seq crepBody796_66 crepBody796_110

def crepBody796_112 : CrepProg (BitVec 64) :=
.seq crepBody796_31 crepBody796_111

def crepBody796_113 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody796_112

def crepBody796_114 : CrepProg (BitVec 64) :=
.seq crepBody796_30 crepBody796_113

def crepBody796_115 : CrepProg (BitVec 64) :=
.seq crepBody796_3 crepBody796_114

def crepBody796_116 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody796_115

def crepBody796_117 : CrepProg (BitVec 64) :=
.seq crepBody796_2 crepBody796_116

def crepBody796_118 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody796_117

def crepBody796_119 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody796_118

def crepBody796_120 : CrepProg (BitVec 64) :=
.seq crepBody796_1 crepBody796_119

def data796 : CrepProg (BitVec 64) := crepBody796_120
def output796 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 117#8, 110#8, 99#8, 104#8, 101#8, 99#8, 107#8, 101#8, 100#8,
    95#8, 115#8, 121#8, 115#8, 116#8, 101#8, 109#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8,
    111#8, 110#8], [0, 1, 2], crepProgToHOL data796)
end InitECandidate.Proofs.FrontendStages.Crep
