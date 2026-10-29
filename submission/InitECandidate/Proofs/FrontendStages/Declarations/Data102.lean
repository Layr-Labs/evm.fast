import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify86
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body102_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a00" (Flapjack.Exp.var Flapjack.VarKind.local "n00")

def body102_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a10" (Flapjack.Exp.var Flapjack.VarKind.local "n10")

def body102_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a20" (Flapjack.Exp.var Flapjack.VarKind.local "n20")

def body102_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a30" (Flapjack.Exp.var Flapjack.VarKind.local "n30")

def body102_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a40" (Flapjack.Exp.var Flapjack.VarKind.local "n40")

def body102_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a01" (Flapjack.Exp.var Flapjack.VarKind.local "n01")

def body102_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a11" (Flapjack.Exp.var Flapjack.VarKind.local "n11")

def body102_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a21" (Flapjack.Exp.var Flapjack.VarKind.local "n21")

def body102_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a31" (Flapjack.Exp.var Flapjack.VarKind.local "n31")

def body102_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a41" (Flapjack.Exp.var Flapjack.VarKind.local "n41")

def body102_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a02" (Flapjack.Exp.var Flapjack.VarKind.local "n02")

def body102_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a12" (Flapjack.Exp.var Flapjack.VarKind.local "n12")

def body102_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a22" (Flapjack.Exp.var Flapjack.VarKind.local "n22")

def body102_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a32" (Flapjack.Exp.var Flapjack.VarKind.local "n32")

def body102_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a42" (Flapjack.Exp.var Flapjack.VarKind.local "n42")

def body102_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a03" (Flapjack.Exp.var Flapjack.VarKind.local "n03")

def body102_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a13" (Flapjack.Exp.var Flapjack.VarKind.local "n13")

def body102_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a23" (Flapjack.Exp.var Flapjack.VarKind.local "n23")

def body102_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a33" (Flapjack.Exp.var Flapjack.VarKind.local "n33")

def body102_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a43" (Flapjack.Exp.var Flapjack.VarKind.local "n43")

def body102_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a04" (Flapjack.Exp.var Flapjack.VarKind.local "n04")

def body102_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a14" (Flapjack.Exp.var Flapjack.VarKind.local "n14")

def body102_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a24" (Flapjack.Exp.var Flapjack.VarKind.local "n24")

def body102_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a34" (Flapjack.Exp.var Flapjack.VarKind.local "n34")

def body102_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a44" (Flapjack.Exp.var Flapjack.VarKind.local "n44")

def body102_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a00"
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a00",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64]])])

def body102_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def body102_27 : Prog (BitVec 64) :=
.seq body102_25 body102_26

def body102_28 : Prog (BitVec 64) :=
.seq body102_24 body102_27

def body102_29 : Prog (BitVec 64) :=
.seq body102_23 body102_28

def body102_30 : Prog (BitVec 64) :=
.seq body102_22 body102_29

def body102_31 : Prog (BitVec 64) :=
.seq body102_21 body102_30

def body102_32 : Prog (BitVec 64) :=
.seq body102_20 body102_31

def body102_33 : Prog (BitVec 64) :=
.seq body102_19 body102_32

def body102_34 : Prog (BitVec 64) :=
.seq body102_18 body102_33

def body102_35 : Prog (BitVec 64) :=
.seq body102_17 body102_34

def body102_36 : Prog (BitVec 64) :=
.seq body102_16 body102_35

def body102_37 : Prog (BitVec 64) :=
.seq body102_15 body102_36

def body102_38 : Prog (BitVec 64) :=
.seq body102_14 body102_37

def body102_39 : Prog (BitVec 64) :=
.seq body102_13 body102_38

def body102_40 : Prog (BitVec 64) :=
.seq body102_12 body102_39

def body102_41 : Prog (BitVec 64) :=
.seq body102_11 body102_40

def body102_42 : Prog (BitVec 64) :=
.seq body102_10 body102_41

def body102_43 : Prog (BitVec 64) :=
.seq body102_9 body102_42

def body102_44 : Prog (BitVec 64) :=
.seq body102_8 body102_43

def body102_45 : Prog (BitVec 64) :=
.seq body102_7 body102_44

def body102_46 : Prog (BitVec 64) :=
.seq body102_6 body102_45

def body102_47 : Prog (BitVec 64) :=
.seq body102_5 body102_46

def body102_48 : Prog (BitVec 64) :=
.seq body102_4 body102_47

def body102_49 : Prog (BitVec 64) :=
.seq body102_3 body102_48

def body102_50 : Prog (BitVec 64) :=
.seq body102_2 body102_49

def body102_51 : Prog (BitVec 64) :=
.seq body102_1 body102_50

def body102_52 : Prog (BitVec 64) :=
.seq body102_0 body102_51

def body102_53 : Prog (BitVec 64) :=
.dec ("n44") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b44",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b04", Flapjack.Exp.var Flapjack.VarKind.local "b14"],
        Flapjack.Exp.var Flapjack.VarKind.local "b04"]]) body102_52

def body102_54 : Prog (BitVec 64) :=
.dec ("n34") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b34",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b44", Flapjack.Exp.var Flapjack.VarKind.local "b04"],
        Flapjack.Exp.var Flapjack.VarKind.local "b44"]]) body102_53

def body102_55 : Prog (BitVec 64) :=
.dec ("n24") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b24",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b34", Flapjack.Exp.var Flapjack.VarKind.local "b44"],
        Flapjack.Exp.var Flapjack.VarKind.local "b34"]]) body102_54

def body102_56 : Prog (BitVec 64) :=
.dec ("n14") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b14",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b24", Flapjack.Exp.var Flapjack.VarKind.local "b34"],
        Flapjack.Exp.var Flapjack.VarKind.local "b24"]]) body102_55

def body102_57 : Prog (BitVec 64) :=
.dec ("n04") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b04",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b14", Flapjack.Exp.var Flapjack.VarKind.local "b24"],
        Flapjack.Exp.var Flapjack.VarKind.local "b14"]]) body102_56

def body102_58 : Prog (BitVec 64) :=
.dec ("b44") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a14", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 62#64)) body102_57

def body102_59 : Prog (BitVec 64) :=
.dec ("b34") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a03", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 23#64)) body102_58

def body102_60 : Prog (BitVec 64) :=
.dec ("b24") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a42", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 25#64)) body102_59

def body102_61 : Prog (BitVec 64) :=
.dec ("b14") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a31", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 9#64)) body102_60

def body102_62 : Prog (BitVec 64) :=
.dec ("b04") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a20", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 2#64)) body102_61

def body102_63 : Prog (BitVec 64) :=
.dec ("n43") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b43",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b03", Flapjack.Exp.var Flapjack.VarKind.local "b13"],
        Flapjack.Exp.var Flapjack.VarKind.local "b03"]]) body102_62

def body102_64 : Prog (BitVec 64) :=
.dec ("n33") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b33",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b43", Flapjack.Exp.var Flapjack.VarKind.local "b03"],
        Flapjack.Exp.var Flapjack.VarKind.local "b43"]]) body102_63

def body102_65 : Prog (BitVec 64) :=
.dec ("n23") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b23",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b33", Flapjack.Exp.var Flapjack.VarKind.local "b43"],
        Flapjack.Exp.var Flapjack.VarKind.local "b33"]]) body102_64

def body102_66 : Prog (BitVec 64) :=
.dec ("n13") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b13",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b23", Flapjack.Exp.var Flapjack.VarKind.local "b33"],
        Flapjack.Exp.var Flapjack.VarKind.local "b23"]]) body102_65

def body102_67 : Prog (BitVec 64) :=
.dec ("n03") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b03",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b13", Flapjack.Exp.var Flapjack.VarKind.local "b23"],
        Flapjack.Exp.var Flapjack.VarKind.local "b13"]]) body102_66

def body102_68 : Prog (BitVec 64) :=
.dec ("b43") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a34", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 8#64)) body102_67

def body102_69 : Prog (BitVec 64) :=
.dec ("b33") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a23", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 49#64)) body102_68

def body102_70 : Prog (BitVec 64) :=
.dec ("b23") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a12", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 54#64)) body102_69

def body102_71 : Prog (BitVec 64) :=
.dec ("b13") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a01", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 28#64)) body102_70

def body102_72 : Prog (BitVec 64) :=
.dec ("b03") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a40", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 37#64)) body102_71

def body102_73 : Prog (BitVec 64) :=
.dec ("n42") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b42",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b02", Flapjack.Exp.var Flapjack.VarKind.local "b12"],
        Flapjack.Exp.var Flapjack.VarKind.local "b02"]]) body102_72

def body102_74 : Prog (BitVec 64) :=
.dec ("n32") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b32",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b42", Flapjack.Exp.var Flapjack.VarKind.local "b02"],
        Flapjack.Exp.var Flapjack.VarKind.local "b42"]]) body102_73

def body102_75 : Prog (BitVec 64) :=
.dec ("n22") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b22",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b32", Flapjack.Exp.var Flapjack.VarKind.local "b42"],
        Flapjack.Exp.var Flapjack.VarKind.local "b32"]]) body102_74

def body102_76 : Prog (BitVec 64) :=
.dec ("n12") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b12",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b22", Flapjack.Exp.var Flapjack.VarKind.local "b32"],
        Flapjack.Exp.var Flapjack.VarKind.local "b22"]]) body102_75

def body102_77 : Prog (BitVec 64) :=
.dec ("n02") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b02",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b12", Flapjack.Exp.var Flapjack.VarKind.local "b22"],
        Flapjack.Exp.var Flapjack.VarKind.local "b12"]]) body102_76

def body102_78 : Prog (BitVec 64) :=
.dec ("b42") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a04", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 46#64)) body102_77

def body102_79 : Prog (BitVec 64) :=
.dec ("b32") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a43", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 56#64)) body102_78

def body102_80 : Prog (BitVec 64) :=
.dec ("b22") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a32", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 39#64)) body102_79

def body102_81 : Prog (BitVec 64) :=
.dec ("b12") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a21", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 58#64)) body102_80

def body102_82 : Prog (BitVec 64) :=
.dec ("b02") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a10", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 63#64)) body102_81

def body102_83 : Prog (BitVec 64) :=
.dec ("n41") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b41",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b01", Flapjack.Exp.var Flapjack.VarKind.local "b11"],
        Flapjack.Exp.var Flapjack.VarKind.local "b01"]]) body102_82

def body102_84 : Prog (BitVec 64) :=
.dec ("n31") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b31",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b41", Flapjack.Exp.var Flapjack.VarKind.local "b01"],
        Flapjack.Exp.var Flapjack.VarKind.local "b41"]]) body102_83

def body102_85 : Prog (BitVec 64) :=
.dec ("n21") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b21",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b31", Flapjack.Exp.var Flapjack.VarKind.local "b41"],
        Flapjack.Exp.var Flapjack.VarKind.local "b31"]]) body102_84

def body102_86 : Prog (BitVec 64) :=
.dec ("n11") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b11",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b21", Flapjack.Exp.var Flapjack.VarKind.local "b31"],
        Flapjack.Exp.var Flapjack.VarKind.local "b21"]]) body102_85

def body102_87 : Prog (BitVec 64) :=
.dec ("n01") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b01",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b11", Flapjack.Exp.var Flapjack.VarKind.local "b21"],
        Flapjack.Exp.var Flapjack.VarKind.local "b11"]]) body102_86

def body102_88 : Prog (BitVec 64) :=
.dec ("b41") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a24", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 3#64)) body102_87

def body102_89 : Prog (BitVec 64) :=
.dec ("b31") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a13", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 19#64)) body102_88

def body102_90 : Prog (BitVec 64) :=
.dec ("b21") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a02", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 61#64)) body102_89

def body102_91 : Prog (BitVec 64) :=
.dec ("b11") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a41", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 44#64)) body102_90

def body102_92 : Prog (BitVec 64) :=
.dec ("b01") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a30", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 36#64)) body102_91

def body102_93 : Prog (BitVec 64) :=
.dec ("n40") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b40",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b00", Flapjack.Exp.var Flapjack.VarKind.local "b10"],
        Flapjack.Exp.var Flapjack.VarKind.local "b00"]]) body102_92

def body102_94 : Prog (BitVec 64) :=
.dec ("n30") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b30",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b40", Flapjack.Exp.var Flapjack.VarKind.local "b00"],
        Flapjack.Exp.var Flapjack.VarKind.local "b40"]]) body102_93

def body102_95 : Prog (BitVec 64) :=
.dec ("n20") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b20",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b30", Flapjack.Exp.var Flapjack.VarKind.local "b40"],
        Flapjack.Exp.var Flapjack.VarKind.local "b30"]]) body102_94

def body102_96 : Prog (BitVec 64) :=
.dec ("n10") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b10",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b20", Flapjack.Exp.var Flapjack.VarKind.local "b30"],
        Flapjack.Exp.var Flapjack.VarKind.local "b20"]]) body102_95

def body102_97 : Prog (BitVec 64) :=
.dec ("n00") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b00",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b10", Flapjack.Exp.var Flapjack.VarKind.local "b20"],
        Flapjack.Exp.var Flapjack.VarKind.local "b10"]]) body102_96

def body102_98 : Prog (BitVec 64) :=
.dec ("b40") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a44", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 50#64)) body102_97

def body102_99 : Prog (BitVec 64) :=
.dec ("b30") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a33", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 43#64)) body102_98

def body102_100 : Prog (BitVec 64) :=
.dec ("b20") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a22", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 21#64)) body102_99

def body102_101 : Prog (BitVec 64) :=
.dec ("b10") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a11", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 20#64)) body102_100

def body102_102 : Prog (BitVec 64) :=
.dec ("b00") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a00", Flapjack.Exp.var Flapjack.VarKind.local "d0"]) body102_101

def body102_103 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c3",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c0") (Flapjack.Exp.const 63#64)]) body102_102

def body102_104 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c2",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c4") (Flapjack.Exp.const 63#64)]) body102_103

def body102_105 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c1",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c3") (Flapjack.Exp.const 63#64)]) body102_104

def body102_106 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c0",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c2") (Flapjack.Exp.const 63#64)]) body102_105

def body102_107 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c4",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c1") (Flapjack.Exp.const 63#64)]) body102_106

def body102_108 : Prog (BitVec 64) :=
.dec ("c4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a40", Flapjack.Exp.var Flapjack.VarKind.local "a41",
    Flapjack.Exp.var Flapjack.VarKind.local "a42", Flapjack.Exp.var Flapjack.VarKind.local "a43",
    Flapjack.Exp.var Flapjack.VarKind.local "a44"]) body102_107

def body102_109 : Prog (BitVec 64) :=
.dec ("c3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a30", Flapjack.Exp.var Flapjack.VarKind.local "a31",
    Flapjack.Exp.var Flapjack.VarKind.local "a32", Flapjack.Exp.var Flapjack.VarKind.local "a33",
    Flapjack.Exp.var Flapjack.VarKind.local "a34"]) body102_108

def body102_110 : Prog (BitVec 64) :=
.dec ("c2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a20", Flapjack.Exp.var Flapjack.VarKind.local "a21",
    Flapjack.Exp.var Flapjack.VarKind.local "a22", Flapjack.Exp.var Flapjack.VarKind.local "a23",
    Flapjack.Exp.var Flapjack.VarKind.local "a24"]) body102_109

def body102_111 : Prog (BitVec 64) :=
.dec ("c1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a10", Flapjack.Exp.var Flapjack.VarKind.local "a11",
    Flapjack.Exp.var Flapjack.VarKind.local "a12", Flapjack.Exp.var Flapjack.VarKind.local "a13",
    Flapjack.Exp.var Flapjack.VarKind.local "a14"]) body102_110

def body102_112 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a00", Flapjack.Exp.var Flapjack.VarKind.local "a01",
    Flapjack.Exp.var Flapjack.VarKind.local "a02", Flapjack.Exp.var Flapjack.VarKind.local "a03",
    Flapjack.Exp.var Flapjack.VarKind.local "a04"]) body102_111

def body102_113 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 24#64)) body102_112

def body102_114 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a00")

def body102_115 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a10")

def body102_116 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a20")

def body102_117 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a30")

def body102_118 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a40")

def body102_119 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a01")

def body102_120 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a11")

def body102_121 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a21")

def body102_122 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a31")

def body102_123 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a41")

def body102_124 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a02")

def body102_125 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a12")

def body102_126 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a22")

def body102_127 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a32")

def body102_128 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a42")

def body102_129 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a03")

def body102_130 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a13")

def body102_131 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a23")

def body102_132 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a33")

def body102_133 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a43")

def body102_134 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a04")

def body102_135 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a14")

def body102_136 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a24")

def body102_137 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a34")

def body102_138 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "a44")

def body102_139 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body102_140 : Prog (BitVec 64) :=
.seq body102_138 body102_139

def body102_141 : Prog (BitVec 64) :=
.seq body102_137 body102_140

def body102_142 : Prog (BitVec 64) :=
.seq body102_136 body102_141

def body102_143 : Prog (BitVec 64) :=
.seq body102_135 body102_142

def body102_144 : Prog (BitVec 64) :=
.seq body102_134 body102_143

def body102_145 : Prog (BitVec 64) :=
.seq body102_133 body102_144

def body102_146 : Prog (BitVec 64) :=
.seq body102_132 body102_145

def body102_147 : Prog (BitVec 64) :=
.seq body102_131 body102_146

def body102_148 : Prog (BitVec 64) :=
.seq body102_130 body102_147

def body102_149 : Prog (BitVec 64) :=
.seq body102_129 body102_148

def body102_150 : Prog (BitVec 64) :=
.seq body102_128 body102_149

def body102_151 : Prog (BitVec 64) :=
.seq body102_127 body102_150

def body102_152 : Prog (BitVec 64) :=
.seq body102_126 body102_151

def body102_153 : Prog (BitVec 64) :=
.seq body102_125 body102_152

def body102_154 : Prog (BitVec 64) :=
.seq body102_124 body102_153

def body102_155 : Prog (BitVec 64) :=
.seq body102_123 body102_154

def body102_156 : Prog (BitVec 64) :=
.seq body102_122 body102_155

def body102_157 : Prog (BitVec 64) :=
.seq body102_121 body102_156

def body102_158 : Prog (BitVec 64) :=
.seq body102_120 body102_157

def body102_159 : Prog (BitVec 64) :=
.seq body102_119 body102_158

def body102_160 : Prog (BitVec 64) :=
.seq body102_118 body102_159

def body102_161 : Prog (BitVec 64) :=
.seq body102_117 body102_160

def body102_162 : Prog (BitVec 64) :=
.seq body102_116 body102_161

def body102_163 : Prog (BitVec 64) :=
.seq body102_115 body102_162

def body102_164 : Prog (BitVec 64) :=
.seq body102_114 body102_163

def body102_165 : Prog (BitVec 64) :=
.seq body102_113 body102_164

def body102_166 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body102_165

def body102_167 : Prog (BitVec 64) :=
.dec ("a44") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 192#64])) body102_166

def body102_168 : Prog (BitVec 64) :=
.dec ("a34") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 184#64])) body102_167

def body102_169 : Prog (BitVec 64) :=
.dec ("a24") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 176#64])) body102_168

def body102_170 : Prog (BitVec 64) :=
.dec ("a14") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 168#64])) body102_169

def body102_171 : Prog (BitVec 64) :=
.dec ("a04") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 160#64])) body102_170

def body102_172 : Prog (BitVec 64) :=
.dec ("a43") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 152#64])) body102_171

def body102_173 : Prog (BitVec 64) :=
.dec ("a33") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 144#64])) body102_172

def body102_174 : Prog (BitVec 64) :=
.dec ("a23") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 136#64])) body102_173

def body102_175 : Prog (BitVec 64) :=
.dec ("a13") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 128#64])) body102_174

def body102_176 : Prog (BitVec 64) :=
.dec ("a03") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 120#64])) body102_175

def body102_177 : Prog (BitVec 64) :=
.dec ("a42") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 112#64])) body102_176

def body102_178 : Prog (BitVec 64) :=
.dec ("a32") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 104#64])) body102_177

def body102_179 : Prog (BitVec 64) :=
.dec ("a22") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 96#64])) body102_178

def body102_180 : Prog (BitVec 64) :=
.dec ("a12") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 88#64])) body102_179

def body102_181 : Prog (BitVec 64) :=
.dec ("a02") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 80#64])) body102_180

def body102_182 : Prog (BitVec 64) :=
.dec ("a41") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 72#64])) body102_181

def body102_183 : Prog (BitVec 64) :=
.dec ("a31") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 64#64])) body102_182

def body102_184 : Prog (BitVec 64) :=
.dec ("a21") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])) body102_183

def body102_185 : Prog (BitVec 64) :=
.dec ("a11") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])) body102_184

def body102_186 : Prog (BitVec 64) :=
.dec ("a01") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])) body102_185

def body102_187 : Prog (BitVec 64) :=
.dec ("a40") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])) body102_186

def body102_188 : Prog (BitVec 64) :=
.dec ("a30") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])) body102_187

def body102_189 : Prog (BitVec 64) :=
.dec ("a20") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])) body102_188

def body102_190 : Prog (BitVec 64) :=
.dec ("a10") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])) body102_189

def body102_191 : Prog (BitVec 64) :=
.dec ("a00") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])) body102_190

def body102_192 : Prog (BitVec 64) :=
.seq body102_0 body102_1

def body102_193 : Prog (BitVec 64) :=
.seq body102_192 body102_2

def body102_194 : Prog (BitVec 64) :=
.seq body102_193 body102_3

def body102_195 : Prog (BitVec 64) :=
.seq body102_194 body102_4

def body102_196 : Prog (BitVec 64) :=
.seq body102_195 body102_5

def body102_197 : Prog (BitVec 64) :=
.seq body102_196 body102_6

def body102_198 : Prog (BitVec 64) :=
.seq body102_197 body102_7

def body102_199 : Prog (BitVec 64) :=
.seq body102_198 body102_8

def body102_200 : Prog (BitVec 64) :=
.seq body102_199 body102_9

def body102_201 : Prog (BitVec 64) :=
.seq body102_200 body102_10

def body102_202 : Prog (BitVec 64) :=
.seq body102_201 body102_11

def body102_203 : Prog (BitVec 64) :=
.seq body102_202 body102_12

def body102_204 : Prog (BitVec 64) :=
.seq body102_203 body102_13

def body102_205 : Prog (BitVec 64) :=
.seq body102_204 body102_14

def body102_206 : Prog (BitVec 64) :=
.seq body102_205 body102_15

def body102_207 : Prog (BitVec 64) :=
.seq body102_206 body102_16

def body102_208 : Prog (BitVec 64) :=
.seq body102_207 body102_17

def body102_209 : Prog (BitVec 64) :=
.seq body102_208 body102_18

def body102_210 : Prog (BitVec 64) :=
.seq body102_209 body102_19

def body102_211 : Prog (BitVec 64) :=
.seq body102_210 body102_20

def body102_212 : Prog (BitVec 64) :=
.seq body102_211 body102_21

def body102_213 : Prog (BitVec 64) :=
.seq body102_212 body102_22

def body102_214 : Prog (BitVec 64) :=
.seq body102_213 body102_23

def body102_215 : Prog (BitVec 64) :=
.seq body102_214 body102_24

def body102_216 : Prog (BitVec 64) :=
.seq body102_215 body102_25

def body102_217 : Prog (BitVec 64) :=
.seq body102_216 body102_26

def body102_218 : Prog (BitVec 64) :=
.dec ("n44") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b44",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b04", Flapjack.Exp.var Flapjack.VarKind.local "b14"],
        Flapjack.Exp.var Flapjack.VarKind.local "b04"]]) body102_217

def body102_219 : Prog (BitVec 64) :=
.dec ("n34") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b34",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b44", Flapjack.Exp.var Flapjack.VarKind.local "b04"],
        Flapjack.Exp.var Flapjack.VarKind.local "b44"]]) body102_218

def body102_220 : Prog (BitVec 64) :=
.dec ("n24") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b24",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b34", Flapjack.Exp.var Flapjack.VarKind.local "b44"],
        Flapjack.Exp.var Flapjack.VarKind.local "b34"]]) body102_219

def body102_221 : Prog (BitVec 64) :=
.dec ("n14") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b14",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b24", Flapjack.Exp.var Flapjack.VarKind.local "b34"],
        Flapjack.Exp.var Flapjack.VarKind.local "b24"]]) body102_220

def body102_222 : Prog (BitVec 64) :=
.dec ("n04") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b04",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b14", Flapjack.Exp.var Flapjack.VarKind.local "b24"],
        Flapjack.Exp.var Flapjack.VarKind.local "b14"]]) body102_221

def body102_223 : Prog (BitVec 64) :=
.dec ("b44") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a14", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 62#64)) body102_222

def body102_224 : Prog (BitVec 64) :=
.dec ("b34") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a03", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 23#64)) body102_223

def body102_225 : Prog (BitVec 64) :=
.dec ("b24") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a42", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 25#64)) body102_224

def body102_226 : Prog (BitVec 64) :=
.dec ("b14") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a31", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 9#64)) body102_225

def body102_227 : Prog (BitVec 64) :=
.dec ("b04") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a20", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 2#64)) body102_226

def body102_228 : Prog (BitVec 64) :=
.dec ("n43") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b43",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b03", Flapjack.Exp.var Flapjack.VarKind.local "b13"],
        Flapjack.Exp.var Flapjack.VarKind.local "b03"]]) body102_227

def body102_229 : Prog (BitVec 64) :=
.dec ("n33") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b33",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b43", Flapjack.Exp.var Flapjack.VarKind.local "b03"],
        Flapjack.Exp.var Flapjack.VarKind.local "b43"]]) body102_228

def body102_230 : Prog (BitVec 64) :=
.dec ("n23") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b23",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b33", Flapjack.Exp.var Flapjack.VarKind.local "b43"],
        Flapjack.Exp.var Flapjack.VarKind.local "b33"]]) body102_229

def body102_231 : Prog (BitVec 64) :=
.dec ("n13") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b13",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b23", Flapjack.Exp.var Flapjack.VarKind.local "b33"],
        Flapjack.Exp.var Flapjack.VarKind.local "b23"]]) body102_230

def body102_232 : Prog (BitVec 64) :=
.dec ("n03") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b03",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b13", Flapjack.Exp.var Flapjack.VarKind.local "b23"],
        Flapjack.Exp.var Flapjack.VarKind.local "b13"]]) body102_231

def body102_233 : Prog (BitVec 64) :=
.dec ("b43") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a34", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 8#64)) body102_232

def body102_234 : Prog (BitVec 64) :=
.dec ("b33") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a23", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 49#64)) body102_233

def body102_235 : Prog (BitVec 64) :=
.dec ("b23") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a12", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 54#64)) body102_234

def body102_236 : Prog (BitVec 64) :=
.dec ("b13") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a01", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 28#64)) body102_235

def body102_237 : Prog (BitVec 64) :=
.dec ("b03") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a40", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 37#64)) body102_236

def body102_238 : Prog (BitVec 64) :=
.dec ("n42") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b42",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b02", Flapjack.Exp.var Flapjack.VarKind.local "b12"],
        Flapjack.Exp.var Flapjack.VarKind.local "b02"]]) body102_237

def body102_239 : Prog (BitVec 64) :=
.dec ("n32") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b32",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b42", Flapjack.Exp.var Flapjack.VarKind.local "b02"],
        Flapjack.Exp.var Flapjack.VarKind.local "b42"]]) body102_238

def body102_240 : Prog (BitVec 64) :=
.dec ("n22") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b22",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b32", Flapjack.Exp.var Flapjack.VarKind.local "b42"],
        Flapjack.Exp.var Flapjack.VarKind.local "b32"]]) body102_239

def body102_241 : Prog (BitVec 64) :=
.dec ("n12") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b12",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b22", Flapjack.Exp.var Flapjack.VarKind.local "b32"],
        Flapjack.Exp.var Flapjack.VarKind.local "b22"]]) body102_240

def body102_242 : Prog (BitVec 64) :=
.dec ("n02") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b02",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b12", Flapjack.Exp.var Flapjack.VarKind.local "b22"],
        Flapjack.Exp.var Flapjack.VarKind.local "b12"]]) body102_241

def body102_243 : Prog (BitVec 64) :=
.dec ("b42") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a04", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 46#64)) body102_242

def body102_244 : Prog (BitVec 64) :=
.dec ("b32") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a43", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 56#64)) body102_243

def body102_245 : Prog (BitVec 64) :=
.dec ("b22") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a32", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 39#64)) body102_244

def body102_246 : Prog (BitVec 64) :=
.dec ("b12") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a21", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 58#64)) body102_245

def body102_247 : Prog (BitVec 64) :=
.dec ("b02") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a10", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 63#64)) body102_246

def body102_248 : Prog (BitVec 64) :=
.dec ("n41") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b41",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b01", Flapjack.Exp.var Flapjack.VarKind.local "b11"],
        Flapjack.Exp.var Flapjack.VarKind.local "b01"]]) body102_247

def body102_249 : Prog (BitVec 64) :=
.dec ("n31") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b31",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b41", Flapjack.Exp.var Flapjack.VarKind.local "b01"],
        Flapjack.Exp.var Flapjack.VarKind.local "b41"]]) body102_248

def body102_250 : Prog (BitVec 64) :=
.dec ("n21") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b21",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b31", Flapjack.Exp.var Flapjack.VarKind.local "b41"],
        Flapjack.Exp.var Flapjack.VarKind.local "b31"]]) body102_249

def body102_251 : Prog (BitVec 64) :=
.dec ("n11") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b11",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b21", Flapjack.Exp.var Flapjack.VarKind.local "b31"],
        Flapjack.Exp.var Flapjack.VarKind.local "b21"]]) body102_250

def body102_252 : Prog (BitVec 64) :=
.dec ("n01") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b01",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b11", Flapjack.Exp.var Flapjack.VarKind.local "b21"],
        Flapjack.Exp.var Flapjack.VarKind.local "b11"]]) body102_251

def body102_253 : Prog (BitVec 64) :=
.dec ("b41") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a24", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 3#64)) body102_252

def body102_254 : Prog (BitVec 64) :=
.dec ("b31") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a13", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 19#64)) body102_253

def body102_255 : Prog (BitVec 64) :=
.dec ("b21") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a02", Flapjack.Exp.var Flapjack.VarKind.local "d0"])
  (Flapjack.Exp.const 61#64)) body102_254

def body102_256 : Prog (BitVec 64) :=
.dec ("b11") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a41", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 44#64)) body102_255

def body102_257 : Prog (BitVec 64) :=
.dec ("b01") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a30", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 36#64)) body102_256

def body102_258 : Prog (BitVec 64) :=
.dec ("n40") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b40",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b00", Flapjack.Exp.var Flapjack.VarKind.local "b10"],
        Flapjack.Exp.var Flapjack.VarKind.local "b00"]]) body102_257

def body102_259 : Prog (BitVec 64) :=
.dec ("n30") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b30",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b40", Flapjack.Exp.var Flapjack.VarKind.local "b00"],
        Flapjack.Exp.var Flapjack.VarKind.local "b40"]]) body102_258

def body102_260 : Prog (BitVec 64) :=
.dec ("n20") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b20",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b30", Flapjack.Exp.var Flapjack.VarKind.local "b40"],
        Flapjack.Exp.var Flapjack.VarKind.local "b30"]]) body102_259

def body102_261 : Prog (BitVec 64) :=
.dec ("n10") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b10",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b20", Flapjack.Exp.var Flapjack.VarKind.local "b30"],
        Flapjack.Exp.var Flapjack.VarKind.local "b20"]]) body102_260

def body102_262 : Prog (BitVec 64) :=
.dec ("n00") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "b00",
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.var Flapjack.VarKind.local "b10", Flapjack.Exp.var Flapjack.VarKind.local "b20"],
        Flapjack.Exp.var Flapjack.VarKind.local "b10"]]) body102_261

def body102_263 : Prog (BitVec 64) :=
.dec ("b40") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a44", Flapjack.Exp.var Flapjack.VarKind.local "d4"])
  (Flapjack.Exp.const 50#64)) body102_262

def body102_264 : Prog (BitVec 64) :=
.dec ("b30") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a33", Flapjack.Exp.var Flapjack.VarKind.local "d3"])
  (Flapjack.Exp.const 43#64)) body102_263

def body102_265 : Prog (BitVec 64) :=
.dec ("b20") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a22", Flapjack.Exp.var Flapjack.VarKind.local "d2"])
  (Flapjack.Exp.const 21#64)) body102_264

def body102_266 : Prog (BitVec 64) :=
.dec ("b10") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.ror
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "a11", Flapjack.Exp.var Flapjack.VarKind.local "d1"])
  (Flapjack.Exp.const 20#64)) body102_265

def body102_267 : Prog (BitVec 64) :=
.dec ("b00") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a00", Flapjack.Exp.var Flapjack.VarKind.local "d0"]) body102_266

def body102_268 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c3",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c0") (Flapjack.Exp.const 63#64)]) body102_267

def body102_269 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c2",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c4") (Flapjack.Exp.const 63#64)]) body102_268

def body102_270 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c1",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c3") (Flapjack.Exp.const 63#64)]) body102_269

def body102_271 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c0",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c2") (Flapjack.Exp.const 63#64)]) body102_270

def body102_272 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "c4",
    Flapjack.Exp.shift Flapjack.Shift.ror (Flapjack.Exp.var Flapjack.VarKind.local "c1") (Flapjack.Exp.const 63#64)]) body102_271

def body102_273 : Prog (BitVec 64) :=
.dec ("c4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a40", Flapjack.Exp.var Flapjack.VarKind.local "a41",
    Flapjack.Exp.var Flapjack.VarKind.local "a42", Flapjack.Exp.var Flapjack.VarKind.local "a43",
    Flapjack.Exp.var Flapjack.VarKind.local "a44"]) body102_272

def body102_274 : Prog (BitVec 64) :=
.dec ("c3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a30", Flapjack.Exp.var Flapjack.VarKind.local "a31",
    Flapjack.Exp.var Flapjack.VarKind.local "a32", Flapjack.Exp.var Flapjack.VarKind.local "a33",
    Flapjack.Exp.var Flapjack.VarKind.local "a34"]) body102_273

def body102_275 : Prog (BitVec 64) :=
.dec ("c2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a20", Flapjack.Exp.var Flapjack.VarKind.local "a21",
    Flapjack.Exp.var Flapjack.VarKind.local "a22", Flapjack.Exp.var Flapjack.VarKind.local "a23",
    Flapjack.Exp.var Flapjack.VarKind.local "a24"]) body102_274

def body102_276 : Prog (BitVec 64) :=
.dec ("c1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a10", Flapjack.Exp.var Flapjack.VarKind.local "a11",
    Flapjack.Exp.var Flapjack.VarKind.local "a12", Flapjack.Exp.var Flapjack.VarKind.local "a13",
    Flapjack.Exp.var Flapjack.VarKind.local "a14"]) body102_275

def body102_277 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.var Flapjack.VarKind.local "a00", Flapjack.Exp.var Flapjack.VarKind.local "a01",
    Flapjack.Exp.var Flapjack.VarKind.local "a02", Flapjack.Exp.var Flapjack.VarKind.local "a03",
    Flapjack.Exp.var Flapjack.VarKind.local "a04"]) body102_276

def body102_278 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 24#64)) body102_277

def body102_279 : Prog (BitVec 64) :=
.seq body102_278 body102_114

def body102_280 : Prog (BitVec 64) :=
.seq body102_279 body102_115

def body102_281 : Prog (BitVec 64) :=
.seq body102_280 body102_116

def body102_282 : Prog (BitVec 64) :=
.seq body102_281 body102_117

def body102_283 : Prog (BitVec 64) :=
.seq body102_282 body102_118

def body102_284 : Prog (BitVec 64) :=
.seq body102_283 body102_119

def body102_285 : Prog (BitVec 64) :=
.seq body102_284 body102_120

def body102_286 : Prog (BitVec 64) :=
.seq body102_285 body102_121

def body102_287 : Prog (BitVec 64) :=
.seq body102_286 body102_122

def body102_288 : Prog (BitVec 64) :=
.seq body102_287 body102_123

def body102_289 : Prog (BitVec 64) :=
.seq body102_288 body102_124

def body102_290 : Prog (BitVec 64) :=
.seq body102_289 body102_125

def body102_291 : Prog (BitVec 64) :=
.seq body102_290 body102_126

def body102_292 : Prog (BitVec 64) :=
.seq body102_291 body102_127

def body102_293 : Prog (BitVec 64) :=
.seq body102_292 body102_128

def body102_294 : Prog (BitVec 64) :=
.seq body102_293 body102_129

def body102_295 : Prog (BitVec 64) :=
.seq body102_294 body102_130

def body102_296 : Prog (BitVec 64) :=
.seq body102_295 body102_131

def body102_297 : Prog (BitVec 64) :=
.seq body102_296 body102_132

def body102_298 : Prog (BitVec 64) :=
.seq body102_297 body102_133

def body102_299 : Prog (BitVec 64) :=
.seq body102_298 body102_134

def body102_300 : Prog (BitVec 64) :=
.seq body102_299 body102_135

def body102_301 : Prog (BitVec 64) :=
.seq body102_300 body102_136

def body102_302 : Prog (BitVec 64) :=
.seq body102_301 body102_137

def body102_303 : Prog (BitVec 64) :=
.seq body102_302 body102_138

def body102_304 : Prog (BitVec 64) :=
.seq body102_303 body102_139

def body102_305 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body102_304

def body102_306 : Prog (BitVec 64) :=
.dec ("a44") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 192#64])) body102_305

def body102_307 : Prog (BitVec 64) :=
.dec ("a34") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 184#64])) body102_306

def body102_308 : Prog (BitVec 64) :=
.dec ("a24") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 176#64])) body102_307

def body102_309 : Prog (BitVec 64) :=
.dec ("a14") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 168#64])) body102_308

def body102_310 : Prog (BitVec 64) :=
.dec ("a04") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 160#64])) body102_309

def body102_311 : Prog (BitVec 64) :=
.dec ("a43") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 152#64])) body102_310

def body102_312 : Prog (BitVec 64) :=
.dec ("a33") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 144#64])) body102_311

def body102_313 : Prog (BitVec 64) :=
.dec ("a23") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 136#64])) body102_312

def body102_314 : Prog (BitVec 64) :=
.dec ("a13") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 128#64])) body102_313

def body102_315 : Prog (BitVec 64) :=
.dec ("a03") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 120#64])) body102_314

def body102_316 : Prog (BitVec 64) :=
.dec ("a42") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 112#64])) body102_315

def body102_317 : Prog (BitVec 64) :=
.dec ("a32") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 104#64])) body102_316

def body102_318 : Prog (BitVec 64) :=
.dec ("a22") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 96#64])) body102_317

def body102_319 : Prog (BitVec 64) :=
.dec ("a12") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 88#64])) body102_318

def body102_320 : Prog (BitVec 64) :=
.dec ("a02") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 80#64])) body102_319

def body102_321 : Prog (BitVec 64) :=
.dec ("a41") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 72#64])) body102_320

def body102_322 : Prog (BitVec 64) :=
.dec ("a31") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 64#64])) body102_321

def body102_323 : Prog (BitVec 64) :=
.dec ("a21") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])) body102_322

def body102_324 : Prog (BitVec 64) :=
.dec ("a11") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])) body102_323

def body102_325 : Prog (BitVec 64) :=
.dec ("a01") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])) body102_324

def body102_326 : Prog (BitVec 64) :=
.dec ("a40") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])) body102_325

def body102_327 : Prog (BitVec 64) :=
.dec ("a30") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])) body102_326

def body102_328 : Prog (BitVec 64) :=
.dec ("a20") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])) body102_327

def body102_329 : Prog (BitVec 64) :=
.dec ("a10") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])) body102_328

def body102_330 : Prog (BitVec 64) :=
.dec ("a00") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])) body102_329

def originalData102 : Decl (BitVec 64) :=
.function { name := "keccak_f1600", inline := false, exported := false, params := [("stp", Flapjack.Shape.one)], body := body102_191, returnShape := (Flapjack.Shape.one) }
def simplifiedData102 : Decl (BitVec 64) :=
.function { name := "keccak_f1600", inline := false, exported := false, params := [("stp", Flapjack.Shape.one)], body := body102_330, returnShape := (Flapjack.Shape.one) }
def original102 := Pancake.PanLang.declToHOL originalData102
def simplified102 := Pancake.PanLang.declToHOL simplifiedData102
end InitECandidate.Proofs.FrontendStages.Declarations
