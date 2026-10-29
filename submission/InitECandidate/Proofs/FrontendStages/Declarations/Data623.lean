import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify607
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body623_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "va"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "va", Flapjack.Exp.var Flapjack.VarKind.local "vb",
      Flapjack.Exp.var Flapjack.VarKind.local "x"])

def body623_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vd"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vd", Flapjack.Exp.var Flapjack.VarKind.local "va"])
    (Flapjack.Exp.const 32#64))

def body623_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vc", Flapjack.Exp.var Flapjack.VarKind.local "vd"])

def body623_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vb"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vb", Flapjack.Exp.var Flapjack.VarKind.local "vc"])
    (Flapjack.Exp.const 24#64))

def body623_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "va"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "va", Flapjack.Exp.var Flapjack.VarKind.local "vb",
      Flapjack.Exp.var Flapjack.VarKind.local "y"])

def body623_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vd"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vd", Flapjack.Exp.var Flapjack.VarKind.local "va"])
    (Flapjack.Exp.const 16#64))

def body623_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vb"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vb", Flapjack.Exp.var Flapjack.VarKind.local "vc"])
    (Flapjack.Exp.const 63#64))

def body623_7 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pa") (Flapjack.Exp.var Flapjack.VarKind.local "va")

def body623_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pb") (Flapjack.Exp.var Flapjack.VarKind.local "vb")

def body623_9 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pc") (Flapjack.Exp.var Flapjack.VarKind.local "vc")

def body623_10 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pd") (Flapjack.Exp.var Flapjack.VarKind.local "vd")

def body623_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body623_12 : Prog (BitVec 64) :=
.seq body623_10 body623_11

def body623_13 : Prog (BitVec 64) :=
.seq body623_9 body623_12

def body623_14 : Prog (BitVec 64) :=
.seq body623_8 body623_13

def body623_15 : Prog (BitVec 64) :=
.seq body623_7 body623_14

def body623_16 : Prog (BitVec 64) :=
.seq body623_6 body623_15

def body623_17 : Prog (BitVec 64) :=
.seq body623_2 body623_16

def body623_18 : Prog (BitVec 64) :=
.seq body623_5 body623_17

def body623_19 : Prog (BitVec 64) :=
.seq body623_4 body623_18

def body623_20 : Prog (BitVec 64) :=
.seq body623_3 body623_19

def body623_21 : Prog (BitVec 64) :=
.seq body623_2 body623_20

def body623_22 : Prog (BitVec 64) :=
.seq body623_1 body623_21

def body623_23 : Prog (BitVec 64) :=
.seq body623_0 body623_22

def body623_24 : Prog (BitVec 64) :=
.dec ("vd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pd")) body623_23

def body623_25 : Prog (BitVec 64) :=
.dec ("vc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pc")) body623_24

def body623_26 : Prog (BitVec 64) :=
.dec ("vb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pb")) body623_25

def body623_27 : Prog (BitVec 64) :=
.dec ("va") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pa")) body623_26

def body623_28 : Prog (BitVec 64) :=
.dec ("pd") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 8#64]]) body623_27

def body623_29 : Prog (BitVec 64) :=
.dec ("pc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.const 8#64]]) body623_28

def body623_30 : Prog (BitVec 64) :=
.dec ("pb") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 8#64]]) body623_29

def body623_31 : Prog (BitVec 64) :=
.dec ("pa") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]]) body623_30

def body623_32 : Prog (BitVec 64) :=
.seq body623_0 body623_1

def body623_33 : Prog (BitVec 64) :=
.seq body623_32 body623_2

def body623_34 : Prog (BitVec 64) :=
.seq body623_33 body623_3

def body623_35 : Prog (BitVec 64) :=
.seq body623_34 body623_4

def body623_36 : Prog (BitVec 64) :=
.seq body623_35 body623_5

def body623_37 : Prog (BitVec 64) :=
.seq body623_36 body623_2

def body623_38 : Prog (BitVec 64) :=
.seq body623_37 body623_6

def body623_39 : Prog (BitVec 64) :=
.seq body623_38 body623_7

def body623_40 : Prog (BitVec 64) :=
.seq body623_39 body623_8

def body623_41 : Prog (BitVec 64) :=
.seq body623_40 body623_9

def body623_42 : Prog (BitVec 64) :=
.seq body623_41 body623_10

def body623_43 : Prog (BitVec 64) :=
.seq body623_42 body623_11

def body623_44 : Prog (BitVec 64) :=
.dec ("vd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pd")) body623_43

def body623_45 : Prog (BitVec 64) :=
.dec ("vc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pc")) body623_44

def body623_46 : Prog (BitVec 64) :=
.dec ("vb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pb")) body623_45

def body623_47 : Prog (BitVec 64) :=
.dec ("va") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pa")) body623_46

def body623_48 : Prog (BitVec 64) :=
.dec ("pd") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 8#64]]) body623_47

def body623_49 : Prog (BitVec 64) :=
.dec ("pc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.const 8#64]]) body623_48

def body623_50 : Prog (BitVec 64) :=
.dec ("pb") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 8#64]]) body623_49

def body623_51 : Prog (BitVec 64) :=
.dec ("pa") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]]) body623_50

def originalData623 : Decl (BitVec 64) :=
.function { name := "blake2_g", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("c", Flapjack.Shape.one), ("d", Flapjack.Shape.one),
  ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one)], body := body623_31, returnShape := (Flapjack.Shape.one) }
def simplifiedData623 : Decl (BitVec 64) :=
.function { name := "blake2_g", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("c", Flapjack.Shape.one), ("d", Flapjack.Shape.one),
  ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one)], body := body623_51, returnShape := (Flapjack.Shape.one) }
def original623 := Pancake.PanLang.declToHOL originalData623
def simplified623 := Pancake.PanLang.declToHOL simplifiedData623
end InitECandidate.Proofs.FrontendStages.Declarations
