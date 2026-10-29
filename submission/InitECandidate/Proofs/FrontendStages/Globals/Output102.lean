import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data102
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody102_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a00" (Flapjack.Exp.var Flapjack.VarKind.local "n00")

def globalBody102_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a10" (Flapjack.Exp.var Flapjack.VarKind.local "n10")

def globalBody102_2 : Prog (BitVec 64) :=
.seq globalBody102_0 globalBody102_1

def globalBody102_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a20" (Flapjack.Exp.var Flapjack.VarKind.local "n20")

def globalBody102_4 : Prog (BitVec 64) :=
.seq globalBody102_2 globalBody102_3

def globalBody102_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a30" (Flapjack.Exp.var Flapjack.VarKind.local "n30")

def globalBody102_6 : Prog (BitVec 64) :=
.seq globalBody102_4 globalBody102_5

def globalBody102_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a40" (Flapjack.Exp.var Flapjack.VarKind.local "n40")

def globalBody102_8 : Prog (BitVec 64) :=
.seq globalBody102_6 globalBody102_7

def globalBody102_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a01" (Flapjack.Exp.var Flapjack.VarKind.local "n01")

def globalBody102_10 : Prog (BitVec 64) :=
.seq globalBody102_8 globalBody102_9

def globalBody102_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a11" (Flapjack.Exp.var Flapjack.VarKind.local "n11")

def globalBody102_12 : Prog (BitVec 64) :=
.seq globalBody102_10 globalBody102_11

def globalBody102_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a21" (Flapjack.Exp.var Flapjack.VarKind.local "n21")

def globalBody102_14 : Prog (BitVec 64) :=
.seq globalBody102_12 globalBody102_13

def globalBody102_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a31" (Flapjack.Exp.var Flapjack.VarKind.local "n31")

def globalBody102_16 : Prog (BitVec 64) :=
.seq globalBody102_14 globalBody102_15

def globalBody102_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a41" (Flapjack.Exp.var Flapjack.VarKind.local "n41")

def globalBody102_18 : Prog (BitVec 64) :=
.seq globalBody102_16 globalBody102_17

def globalBody102_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a02" (Flapjack.Exp.var Flapjack.VarKind.local "n02")

def globalBody102_20 : Prog (BitVec 64) :=
.seq globalBody102_18 globalBody102_19

def globalBody102_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a12" (Flapjack.Exp.var Flapjack.VarKind.local "n12")

def globalBody102_22 : Prog (BitVec 64) :=
.seq globalBody102_20 globalBody102_21

def globalBody102_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a22" (Flapjack.Exp.var Flapjack.VarKind.local "n22")

def globalBody102_24 : Prog (BitVec 64) :=
.seq globalBody102_22 globalBody102_23

def globalBody102_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a32" (Flapjack.Exp.var Flapjack.VarKind.local "n32")

def globalBody102_26 : Prog (BitVec 64) :=
.seq globalBody102_24 globalBody102_25

def globalBody102_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a42" (Flapjack.Exp.var Flapjack.VarKind.local "n42")

def globalBody102_28 : Prog (BitVec 64) :=
.seq globalBody102_26 globalBody102_27

def globalBody102_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a03" (Flapjack.Exp.var Flapjack.VarKind.local "n03")

def globalBody102_30 : Prog (BitVec 64) :=
.seq globalBody102_28 globalBody102_29

def globalBody102_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a13" (Flapjack.Exp.var Flapjack.VarKind.local "n13")

def globalBody102_32 : Prog (BitVec 64) :=
.seq globalBody102_30 globalBody102_31

def globalBody102_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a23" (Flapjack.Exp.var Flapjack.VarKind.local "n23")

def globalBody102_34 : Prog (BitVec 64) :=
.seq globalBody102_32 globalBody102_33

def globalBody102_35 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a33" (Flapjack.Exp.var Flapjack.VarKind.local "n33")

def globalBody102_36 : Prog (BitVec 64) :=
.seq globalBody102_34 globalBody102_35

def globalBody102_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a43" (Flapjack.Exp.var Flapjack.VarKind.local "n43")

def globalBody102_38 : Prog (BitVec 64) :=
.seq globalBody102_36 globalBody102_37

def globalBody102_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a04" (Flapjack.Exp.var Flapjack.VarKind.local "n04")

def globalBody102_40 : Prog (BitVec 64) :=
.seq globalBody102_38 globalBody102_39

def globalBody102_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a14" (Flapjack.Exp.var Flapjack.VarKind.local "n14")

def globalBody102_42 : Prog (BitVec 64) :=
.seq globalBody102_40 globalBody102_41

def globalBody102_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a24" (Flapjack.Exp.var Flapjack.VarKind.local "n24")

def globalBody102_44 : Prog (BitVec 64) :=
.seq globalBody102_42 globalBody102_43

def globalBody102_45 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a34" (Flapjack.Exp.var Flapjack.VarKind.local "n34")

def globalBody102_46 : Prog (BitVec 64) :=
.seq globalBody102_44 globalBody102_45

def globalBody102_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a44" (Flapjack.Exp.var Flapjack.VarKind.local "n44")

def globalBody102_48 : Prog (BitVec 64) :=
.seq globalBody102_46 globalBody102_47

def globalBody102_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a00"
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a00",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64]])])

def globalBody102_50 : Prog (BitVec 64) :=
.seq globalBody102_48 globalBody102_49

def globalBody102_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def globalBody102_52 : Prog (BitVec 64) :=
.seq globalBody102_50 globalBody102_51

def globalBody102_53 : Prog (BitVec 64) :=
.dec ("n44") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b44",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b04", Flapjack.Exp.var Flapjack.VarKind.local "b14"],
        Flapjack.Exp.var Flapjack.VarKind.local "b04"]]) globalBody102_52

def globalBody102_54 : Prog (BitVec 64) :=
.dec ("n34") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b34",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b44", Flapjack.Exp.var Flapjack.VarKind.local "b04"],
        Flapjack.Exp.var Flapjack.VarKind.local "b44"]]) globalBody102_53

def globalBody102_55 : Prog (BitVec 64) :=
.dec ("n24") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b24",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b34", Flapjack.Exp.var Flapjack.VarKind.local "b44"],
        Flapjack.Exp.var Flapjack.VarKind.local "b34"]]) globalBody102_54

def globalBody102_56 : Prog (BitVec 64) :=
.dec ("n14") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b14",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b24", Flapjack.Exp.var Flapjack.VarKind.local "b34"],
        Flapjack.Exp.var Flapjack.VarKind.local "b24"]]) globalBody102_55

def globalBody102_57 : Prog (BitVec 64) :=
.dec ("n04") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b04",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b14", Flapjack.Exp.var Flapjack.VarKind.local "b24"],
        Flapjack.Exp.var Flapjack.VarKind.local "b14"]]) globalBody102_56

def globalBody102_58 : Prog (BitVec 64) :=
.dec ("b44") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a14", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 62#64)) globalBody102_57

def globalBody102_59 : Prog (BitVec 64) :=
.dec ("b34") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a03", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 23#64)) globalBody102_58

def globalBody102_60 : Prog (BitVec 64) :=
.dec ("b24") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a42", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 25#64)) globalBody102_59

def globalBody102_61 : Prog (BitVec 64) :=
.dec ("b14") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a31", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 9#64)) globalBody102_60

def globalBody102_62 : Prog (BitVec 64) :=
.dec ("b04") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a20", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 2#64)) globalBody102_61

def globalBody102_63 : Prog (BitVec 64) :=
.dec ("n43") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b43",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b03", Flapjack.Exp.var Flapjack.VarKind.local "b13"],
        Flapjack.Exp.var Flapjack.VarKind.local "b03"]]) globalBody102_62

def globalBody102_64 : Prog (BitVec 64) :=
.dec ("n33") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b33",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b43", Flapjack.Exp.var Flapjack.VarKind.local "b03"],
        Flapjack.Exp.var Flapjack.VarKind.local "b43"]]) globalBody102_63

def globalBody102_65 : Prog (BitVec 64) :=
.dec ("n23") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b23",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b33", Flapjack.Exp.var Flapjack.VarKind.local "b43"],
        Flapjack.Exp.var Flapjack.VarKind.local "b33"]]) globalBody102_64

def globalBody102_66 : Prog (BitVec 64) :=
.dec ("n13") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b13",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b23", Flapjack.Exp.var Flapjack.VarKind.local "b33"],
        Flapjack.Exp.var Flapjack.VarKind.local "b23"]]) globalBody102_65

def globalBody102_67 : Prog (BitVec 64) :=
.dec ("n03") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b03",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b13", Flapjack.Exp.var Flapjack.VarKind.local "b23"],
        Flapjack.Exp.var Flapjack.VarKind.local "b13"]]) globalBody102_66

def globalBody102_68 : Prog (BitVec 64) :=
.dec ("b43") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a34", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 8#64)) globalBody102_67

def globalBody102_69 : Prog (BitVec 64) :=
.dec ("b33") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a23", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 49#64)) globalBody102_68

def globalBody102_70 : Prog (BitVec 64) :=
.dec ("b23") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a12", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 54#64)) globalBody102_69

def globalBody102_71 : Prog (BitVec 64) :=
.dec ("b13") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a01", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 28#64)) globalBody102_70

def globalBody102_72 : Prog (BitVec 64) :=
.dec ("b03") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a40", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 37#64)) globalBody102_71

def globalBody102_73 : Prog (BitVec 64) :=
.dec ("n42") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b42",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b02", Flapjack.Exp.var Flapjack.VarKind.local "b12"],
        Flapjack.Exp.var Flapjack.VarKind.local "b02"]]) globalBody102_72

def globalBody102_74 : Prog (BitVec 64) :=
.dec ("n32") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b32",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b42", Flapjack.Exp.var Flapjack.VarKind.local "b02"],
        Flapjack.Exp.var Flapjack.VarKind.local "b42"]]) globalBody102_73

def globalBody102_75 : Prog (BitVec 64) :=
.dec ("n22") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b22",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b32", Flapjack.Exp.var Flapjack.VarKind.local "b42"],
        Flapjack.Exp.var Flapjack.VarKind.local "b32"]]) globalBody102_74

def globalBody102_76 : Prog (BitVec 64) :=
.dec ("n12") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b12",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b22", Flapjack.Exp.var Flapjack.VarKind.local "b32"],
        Flapjack.Exp.var Flapjack.VarKind.local "b22"]]) globalBody102_75

def globalBody102_77 : Prog (BitVec 64) :=
.dec ("n02") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b02",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b12", Flapjack.Exp.var Flapjack.VarKind.local "b22"],
        Flapjack.Exp.var Flapjack.VarKind.local "b12"]]) globalBody102_76

def globalBody102_78 : Prog (BitVec 64) :=
.dec ("b42") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a04", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 46#64)) globalBody102_77

def globalBody102_79 : Prog (BitVec 64) :=
.dec ("b32") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a43", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 56#64)) globalBody102_78

def globalBody102_80 : Prog (BitVec 64) :=
.dec ("b22") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a32", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 39#64)) globalBody102_79

def globalBody102_81 : Prog (BitVec 64) :=
.dec ("b12") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a21", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 58#64)) globalBody102_80

def globalBody102_82 : Prog (BitVec 64) :=
.dec ("b02") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a10", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 63#64)) globalBody102_81

def globalBody102_83 : Prog (BitVec 64) :=
.dec ("n41") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b41",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b01", Flapjack.Exp.var Flapjack.VarKind.local "b11"],
        Flapjack.Exp.var Flapjack.VarKind.local "b01"]]) globalBody102_82

def globalBody102_84 : Prog (BitVec 64) :=
.dec ("n31") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b31",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b41", Flapjack.Exp.var Flapjack.VarKind.local "b01"],
        Flapjack.Exp.var Flapjack.VarKind.local "b41"]]) globalBody102_83

def globalBody102_85 : Prog (BitVec 64) :=
.dec ("n21") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b21",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b31", Flapjack.Exp.var Flapjack.VarKind.local "b41"],
        Flapjack.Exp.var Flapjack.VarKind.local "b31"]]) globalBody102_84

def globalBody102_86 : Prog (BitVec 64) :=
.dec ("n11") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b11",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b21", Flapjack.Exp.var Flapjack.VarKind.local "b31"],
        Flapjack.Exp.var Flapjack.VarKind.local "b21"]]) globalBody102_85

def globalBody102_87 : Prog (BitVec 64) :=
.dec ("n01") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b01",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b11", Flapjack.Exp.var Flapjack.VarKind.local "b21"],
        Flapjack.Exp.var Flapjack.VarKind.local "b11"]]) globalBody102_86

def globalBody102_88 : Prog (BitVec 64) :=
.dec ("b41") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a24", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 3#64)) globalBody102_87

def globalBody102_89 : Prog (BitVec 64) :=
.dec ("b31") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a13", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 19#64)) globalBody102_88

def globalBody102_90 : Prog (BitVec 64) :=
.dec ("b21") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a02", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 61#64)) globalBody102_89

def globalBody102_91 : Prog (BitVec 64) :=
.dec ("b11") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a41", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 44#64)) globalBody102_90

def globalBody102_92 : Prog (BitVec 64) :=
.dec ("b01") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a30", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 36#64)) globalBody102_91

def globalBody102_93 : Prog (BitVec 64) :=
.dec ("n40") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b40",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b00", Flapjack.Exp.var Flapjack.VarKind.local "b10"],
        Flapjack.Exp.var Flapjack.VarKind.local "b00"]]) globalBody102_92

def globalBody102_94 : Prog (BitVec 64) :=
.dec ("n30") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b30",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b40", Flapjack.Exp.var Flapjack.VarKind.local "b00"],
        Flapjack.Exp.var Flapjack.VarKind.local "b40"]]) globalBody102_93

def globalBody102_95 : Prog (BitVec 64) :=
.dec ("n20") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b20",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b30", Flapjack.Exp.var Flapjack.VarKind.local "b40"],
        Flapjack.Exp.var Flapjack.VarKind.local "b30"]]) globalBody102_94

def globalBody102_96 : Prog (BitVec 64) :=
.dec ("n10") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b10",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b20", Flapjack.Exp.var Flapjack.VarKind.local "b30"],
        Flapjack.Exp.var Flapjack.VarKind.local "b20"]]) globalBody102_95

def globalBody102_97 : Prog (BitVec 64) :=
.dec ("n00") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b00",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b10", Flapjack.Exp.var Flapjack.VarKind.local "b20"],
        Flapjack.Exp.var Flapjack.VarKind.local "b10"]]) globalBody102_96

def globalBody102_98 : Prog (BitVec 64) :=
.dec ("b40") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a44", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 50#64)) globalBody102_97

def globalBody102_99 : Prog (BitVec 64) :=
.dec ("b30") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a33", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 43#64)) globalBody102_98

def globalBody102_100 : Prog (BitVec 64) :=
.dec ("b20") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a22", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 21#64)) globalBody102_99

def globalBody102_101 : Prog (BitVec 64) :=
.dec ("b10") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a11", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 20#64)) globalBody102_100

def globalBody102_102 : Prog (BitVec 64) :=
.dec ("b00") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a00", Flapjack.Exp.var Flapjack.VarKind.local "d0"]) globalBody102_101

def globalBody102_103 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c3",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c0") (Flapjack.Exp.const 63#64)]) globalBody102_102

def globalBody102_104 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c2",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c4") (Flapjack.Exp.const 63#64)]) globalBody102_103

def globalBody102_105 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c1",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c3") (Flapjack.Exp.const 63#64)]) globalBody102_104

def globalBody102_106 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c0",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c2") (Flapjack.Exp.const 63#64)]) globalBody102_105

def globalBody102_107 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c4",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c1") (Flapjack.Exp.const 63#64)]) globalBody102_106

def globalBody102_108 : Prog (BitVec 64) :=
.dec ("c4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a40", Flapjack.Exp.var Flapjack.VarKind.local "a41",
    Flapjack.Exp.var Flapjack.VarKind.local "a42", Flapjack.Exp.var Flapjack.VarKind.local "a43",
    Flapjack.Exp.var Flapjack.VarKind.local "a44"]) globalBody102_107

def globalBody102_109 : Prog (BitVec 64) :=
.dec ("c3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a30", Flapjack.Exp.var Flapjack.VarKind.local "a31",
    Flapjack.Exp.var Flapjack.VarKind.local "a32", Flapjack.Exp.var Flapjack.VarKind.local "a33",
    Flapjack.Exp.var Flapjack.VarKind.local "a34"]) globalBody102_108

def globalBody102_110 : Prog (BitVec 64) :=
.dec ("c2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a20", Flapjack.Exp.var Flapjack.VarKind.local "a21",
    Flapjack.Exp.var Flapjack.VarKind.local "a22", Flapjack.Exp.var Flapjack.VarKind.local "a23",
    Flapjack.Exp.var Flapjack.VarKind.local "a24"]) globalBody102_109

def globalBody102_111 : Prog (BitVec 64) :=
.dec ("c1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a10", Flapjack.Exp.var Flapjack.VarKind.local "a11",
    Flapjack.Exp.var Flapjack.VarKind.local "a12", Flapjack.Exp.var Flapjack.VarKind.local "a13",
    Flapjack.Exp.var Flapjack.VarKind.local "a14"]) globalBody102_110

def globalBody102_112 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a00", Flapjack.Exp.var Flapjack.VarKind.local "a01",
    Flapjack.Exp.var Flapjack.VarKind.local "a02", Flapjack.Exp.var Flapjack.VarKind.local "a03",
    Flapjack.Exp.var Flapjack.VarKind.local "a04"]) globalBody102_111

def globalBody102_113 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 24#64)) globalBody102_112

def globalBody102_114 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a00")

def globalBody102_115 : Prog (BitVec 64) :=
.seq globalBody102_113 globalBody102_114

def globalBody102_116 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a10")

def globalBody102_117 : Prog (BitVec 64) :=
.seq globalBody102_115 globalBody102_116

def globalBody102_118 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a20")

def globalBody102_119 : Prog (BitVec 64) :=
.seq globalBody102_117 globalBody102_118

def globalBody102_120 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a30")

def globalBody102_121 : Prog (BitVec 64) :=
.seq globalBody102_119 globalBody102_120

def globalBody102_122 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a40")

def globalBody102_123 : Prog (BitVec 64) :=
.seq globalBody102_121 globalBody102_122

def globalBody102_124 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a01")

def globalBody102_125 : Prog (BitVec 64) :=
.seq globalBody102_123 globalBody102_124

def globalBody102_126 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a11")

def globalBody102_127 : Prog (BitVec 64) :=
.seq globalBody102_125 globalBody102_126

def globalBody102_128 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a21")

def globalBody102_129 : Prog (BitVec 64) :=
.seq globalBody102_127 globalBody102_128

def globalBody102_130 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a31")

def globalBody102_131 : Prog (BitVec 64) :=
.seq globalBody102_129 globalBody102_130

def globalBody102_132 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a41")

def globalBody102_133 : Prog (BitVec 64) :=
.seq globalBody102_131 globalBody102_132

def globalBody102_134 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a02")

def globalBody102_135 : Prog (BitVec 64) :=
.seq globalBody102_133 globalBody102_134

def globalBody102_136 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a12")

def globalBody102_137 : Prog (BitVec 64) :=
.seq globalBody102_135 globalBody102_136

def globalBody102_138 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a22")

def globalBody102_139 : Prog (BitVec 64) :=
.seq globalBody102_137 globalBody102_138

def globalBody102_140 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a32")

def globalBody102_141 : Prog (BitVec 64) :=
.seq globalBody102_139 globalBody102_140

def globalBody102_142 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a42")

def globalBody102_143 : Prog (BitVec 64) :=
.seq globalBody102_141 globalBody102_142

def globalBody102_144 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a03")

def globalBody102_145 : Prog (BitVec 64) :=
.seq globalBody102_143 globalBody102_144

def globalBody102_146 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a13")

def globalBody102_147 : Prog (BitVec 64) :=
.seq globalBody102_145 globalBody102_146

def globalBody102_148 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a23")

def globalBody102_149 : Prog (BitVec 64) :=
.seq globalBody102_147 globalBody102_148

def globalBody102_150 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a33")

def globalBody102_151 : Prog (BitVec 64) :=
.seq globalBody102_149 globalBody102_150

def globalBody102_152 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a43")

def globalBody102_153 : Prog (BitVec 64) :=
.seq globalBody102_151 globalBody102_152

def globalBody102_154 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a04")

def globalBody102_155 : Prog (BitVec 64) :=
.seq globalBody102_153 globalBody102_154

def globalBody102_156 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a14")

def globalBody102_157 : Prog (BitVec 64) :=
.seq globalBody102_155 globalBody102_156

def globalBody102_158 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a24")

def globalBody102_159 : Prog (BitVec 64) :=
.seq globalBody102_157 globalBody102_158

def globalBody102_160 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a34")

def globalBody102_161 : Prog (BitVec 64) :=
.seq globalBody102_159 globalBody102_160

def globalBody102_162 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a44")

def globalBody102_163 : Prog (BitVec 64) :=
.seq globalBody102_161 globalBody102_162

def globalBody102_164 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody102_165 : Prog (BitVec 64) :=
.seq globalBody102_163 globalBody102_164

def globalBody102_166 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody102_165

def globalBody102_167 : Prog (BitVec 64) :=
.dec ("a44") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 192#64])) globalBody102_166

def globalBody102_168 : Prog (BitVec 64) :=
.dec ("a34") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 184#64])) globalBody102_167

def globalBody102_169 : Prog (BitVec 64) :=
.dec ("a24") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 176#64])) globalBody102_168

def globalBody102_170 : Prog (BitVec 64) :=
.dec ("a14") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 168#64])) globalBody102_169

def globalBody102_171 : Prog (BitVec 64) :=
.dec ("a04") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 160#64])) globalBody102_170

def globalBody102_172 : Prog (BitVec 64) :=
.dec ("a43") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 152#64])) globalBody102_171

def globalBody102_173 : Prog (BitVec 64) :=
.dec ("a33") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 144#64])) globalBody102_172

def globalBody102_174 : Prog (BitVec 64) :=
.dec ("a23") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 136#64])) globalBody102_173

def globalBody102_175 : Prog (BitVec 64) :=
.dec ("a13") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 128#64])) globalBody102_174

def globalBody102_176 : Prog (BitVec 64) :=
.dec ("a03") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 120#64])) globalBody102_175

def globalBody102_177 : Prog (BitVec 64) :=
.dec ("a42") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 112#64])) globalBody102_176

def globalBody102_178 : Prog (BitVec 64) :=
.dec ("a32") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 104#64])) globalBody102_177

def globalBody102_179 : Prog (BitVec 64) :=
.dec ("a22") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 96#64])) globalBody102_178

def globalBody102_180 : Prog (BitVec 64) :=
.dec ("a12") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 88#64])) globalBody102_179

def globalBody102_181 : Prog (BitVec 64) :=
.dec ("a02") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 80#64])) globalBody102_180

def globalBody102_182 : Prog (BitVec 64) :=
.dec ("a41") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 72#64])) globalBody102_181

def globalBody102_183 : Prog (BitVec 64) :=
.dec ("a31") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 64#64])) globalBody102_182

def globalBody102_184 : Prog (BitVec 64) :=
.dec ("a21") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])) globalBody102_183

def globalBody102_185 : Prog (BitVec 64) :=
.dec ("a11") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])) globalBody102_184

def globalBody102_186 : Prog (BitVec 64) :=
.dec ("a01") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])) globalBody102_185

def globalBody102_187 : Prog (BitVec 64) :=
.dec ("a40") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])) globalBody102_186

def globalBody102_188 : Prog (BitVec 64) :=
.dec ("a30") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])) globalBody102_187

def globalBody102_189 : Prog (BitVec 64) :=
.dec ("a20") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])) globalBody102_188

def globalBody102_190 : Prog (BitVec 64) :=
.dec ("a10") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])) globalBody102_189

def globalBody102_191 : Prog (BitVec 64) :=
.dec ("a00") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])) globalBody102_190

def globalData102 : Decl (BitVec 64) :=
.function { name := "keccak_f1600", inline := false, exported := false, params := [("stp", Flapjack.Shape.one)], body := globalBody102_191, returnShape := (Flapjack.Shape.one) }
def globalOutput102 := Pancake.PanLang.declToHOL globalData102
end InitECandidate.Proofs.FrontendStages.Declarations
