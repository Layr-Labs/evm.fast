import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data683
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate667
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody683_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.const 416#64]

def globalBody683_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r0")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 5544790254283102953#64, Flapjack.Exp.const 13698472384431417117#64,
      Flapjack.Exp.const 4628036095437277618#64, Flapjack.Exp.const 2762764518496934255#64])

def globalBody683_2 : Prog (BitVec 64) :=
.seq globalBody683_0 globalBody683_1

def globalBody683_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 10102850021236865696#64, Flapjack.Exp.const 15026249742141879542#64,
      Flapjack.Exp.const 2169086236411634456#64, Flapjack.Exp.const 2710440286313254821#64])

def globalBody683_4 : Prog (BitVec 64) :=
.seq globalBody683_2 globalBody683_3

def globalBody683_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.const 384#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def globalBody683_6 : Prog (BitVec 64) :=
.seq globalBody683_4 globalBody683_5

def globalBody683_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "r1", Flapjack.Exp.const 416#64]

def globalBody683_8 : Prog (BitVec 64) :=
.seq globalBody683_6 globalBody683_7

def globalBody683_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r1", Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 384#64]

def globalBody683_10 : Prog (BitVec 64) :=
.seq globalBody683_8 globalBody683_9

def globalBody683_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "s0", Flapjack.Exp.const 416#64]

def globalBody683_12 : Prog (BitVec 64) :=
.seq globalBody683_10 globalBody683_11

def globalBody683_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "s1", Flapjack.Exp.const 416#64]

def globalBody683_14 : Prog (BitVec 64) :=
.seq globalBody683_12 globalBody683_13

def globalBody683_15 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "s1")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def globalBody683_16 : Prog (BitVec 64) :=
.seq globalBody683_14 globalBody683_15

def globalBody683_17 : Prog (BitVec 64) :=
Flapjack.Prog.break

def globalBody683_18 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody683_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLess (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "d1")) globalBody683_17 globalBody683_18

def globalBody683_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 416#64]

def globalBody683_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "d1"],
          Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "cf")

def globalBody683_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq_poly_submul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.var Flapjack.VarKind.local "r1",
    Flapjack.Exp.var Flapjack.VarKind.local "cf",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "d1"],
    Flapjack.Exp.var Flapjack.VarKind.local "d1"]

def globalBody683_23 : Prog (BitVec 64) :=
.seq globalBody683_21 globalBody683_22

def globalBody683_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "d0"), none)) "fq_poly_deg"
  [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.const 13#64]

def globalBody683_25 : Prog (BitVec 64) :=
.seq globalBody683_23 globalBody683_24

def globalBody683_26 : Prog (BitVec 64) :=
.decCall ("cf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.var Flapjack.VarKind.local "linv"]) globalBody683_25

def globalBody683_27 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "r0",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.const 32#64]])) globalBody683_26

def globalBody683_28 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLess (Flapjack.Exp.var Flapjack.VarKind.local "d0")
  (Flapjack.Exp.var Flapjack.VarKind.local "d1")) globalBody683_27

def globalBody683_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.var Flapjack.VarKind.local "s0",
    Flapjack.Exp.const 416#64]

def globalBody683_30 : Prog (BitVec 64) :=
.seq globalBody683_28 globalBody683_29

def globalBody683_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq_poly_submul"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.var Flapjack.VarKind.local "s1",
    Flapjack.Exp.var Flapjack.VarKind.local "qj", Flapjack.Exp.var Flapjack.VarKind.local "j",
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "j"]]

def globalBody683_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "qz") (Flapjack.Exp.const 0#64)) globalBody683_31 globalBody683_18

def globalBody683_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody683_34 : Prog (BitVec 64) :=
.seq globalBody683_32 globalBody683_33

def globalBody683_35 : Prog (BitVec 64) :=
.decCall ("qz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "qj"]) globalBody683_34

def globalBody683_36 : Prog (BitVec 64) :=
.dec ("qj") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]])) globalBody683_35

def globalBody683_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 13#64)) globalBody683_36

def globalBody683_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r0" (Flapjack.Exp.var Flapjack.VarKind.local "r1")

def globalBody683_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r1" (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody683_40 : Prog (BitVec 64) :=
.seq globalBody683_38 globalBody683_39

def globalBody683_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t" (Flapjack.Exp.var Flapjack.VarKind.local "s0")

def globalBody683_42 : Prog (BitVec 64) :=
.seq globalBody683_40 globalBody683_41

def globalBody683_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s0" (Flapjack.Exp.var Flapjack.VarKind.local "s1")

def globalBody683_44 : Prog (BitVec 64) :=
.seq globalBody683_42 globalBody683_43

def globalBody683_45 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s1" (Flapjack.Exp.var Flapjack.VarKind.local "tmp")

def globalBody683_46 : Prog (BitVec 64) :=
.seq globalBody683_44 globalBody683_45

def globalBody683_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tmp" (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody683_48 : Prog (BitVec 64) :=
.seq globalBody683_46 globalBody683_47

def globalBody683_49 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "r0") globalBody683_48

def globalBody683_50 : Prog (BitVec 64) :=
.seq globalBody683_37 globalBody683_49

def globalBody683_51 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody683_50

def globalBody683_52 : Prog (BitVec 64) :=
.seq globalBody683_30 globalBody683_51

def globalBody683_53 : Prog (BitVec 64) :=
.decCall ("linv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "lead"]) globalBody683_52

def globalBody683_54 : Prog (BitVec 64) :=
.dec ("lead") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "r1",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.const 32#64]])) globalBody683_53

def globalBody683_55 : Prog (BitVec 64) :=
.seq globalBody683_20 globalBody683_54

def globalBody683_56 : Prog (BitVec 64) :=
.decCall ("d0") (Flapjack.Shape.one) ("fq_poly_deg") ([Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.const 13#64]) globalBody683_55

def globalBody683_57 : Prog (BitVec 64) :=
.seq globalBody683_19 globalBody683_56

def globalBody683_58 : Prog (BitVec 64) :=
.decCall ("d1") (Flapjack.Shape.one) ("fq_poly_deg") ([Flapjack.Exp.var Flapjack.VarKind.local "r1", Flapjack.Exp.const 13#64]) globalBody683_57

def globalBody683_59 : Prog (BitVec 64) :=
.while (Flapjack.Exp.const 1#64) globalBody683_58

def globalBody683_60 : Prog (BitVec 64) :=
.seq globalBody683_16 globalBody683_59

def globalBody683_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 384#64]

def globalBody683_62 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody683_63 : Prog (BitVec 64) :=
.seq globalBody683_61 globalBody683_62

def globalBody683_64 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody683_65 : Prog (BitVec 64) :=
.seq globalBody683_63 globalBody683_64

def globalBody683_66 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "dz") (Flapjack.Exp.const 0#64)) globalBody683_65 globalBody683_18

def globalBody683_67 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "ri")

def globalBody683_68 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody683_69 : Prog (BitVec 64) :=
.seq globalBody683_67 globalBody683_68

def globalBody683_70 : Prog (BitVec 64) :=
.decCall ("ri") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.var Flapjack.VarKind.local "cinv"]) globalBody683_69

def globalBody683_71 : Prog (BitVec 64) :=
.dec ("si") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "s1",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]])) globalBody683_70

def globalBody683_72 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 12#64)) globalBody683_71

def globalBody683_73 : Prog (BitVec 64) :=
.seq globalBody683_72 globalBody683_62

def globalBody683_74 : Prog (BitVec 64) :=
.seq globalBody683_73 globalBody683_64

def globalBody683_75 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody683_74

def globalBody683_76 : Prog (BitVec 64) :=
.decCall ("cinv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "c"]) globalBody683_75

def globalBody683_77 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "r1")) globalBody683_76

def globalBody683_78 : Prog (BitVec 64) :=
.seq globalBody683_66 globalBody683_77

def globalBody683_79 : Prog (BitVec 64) :=
.decCall ("dz") (Flapjack.Shape.one) ("fq_poly_deg") ([Flapjack.Exp.var Flapjack.VarKind.local "r1", Flapjack.Exp.const 13#64]) globalBody683_78

def globalBody683_80 : Prog (BitVec 64) :=
.seq globalBody683_60 globalBody683_79

def globalBody683_81 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 416#64]) globalBody683_80

def globalBody683_82 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 416#64]) globalBody683_81

def globalBody683_83 : Prog (BitVec 64) :=
.decCall ("s1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 416#64]) globalBody683_82

def globalBody683_84 : Prog (BitVec 64) :=
.decCall ("s0") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 416#64]) globalBody683_83

def globalBody683_85 : Prog (BitVec 64) :=
.decCall ("r1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 416#64]) globalBody683_84

def globalBody683_86 : Prog (BitVec 64) :=
.decCall ("r0") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 416#64]) globalBody683_85

def globalBody683_87 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody683_86

def globalData683 : Decl (BitVec 64) :=
.function { name := "fq12_inv", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody683_87, returnShape := (Flapjack.Shape.one) }
def globalOutput683 := Pancake.PanLang.declToHOL globalData683
end InitECandidate.Proofs.FrontendStages.Declarations
