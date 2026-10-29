import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify662
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body678_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 1152#64]

def body678_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "shift" (Flapjack.Exp.const 2#64)

def body678_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body678_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 0#64)) body678_1 body678_2

def body678_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "shift" (Flapjack.Exp.const 3#64)

def body678_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 1#64)) body678_4 body678_2

def body678_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "base",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "shift", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "e0")

def body678_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "base",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "shift", Flapjack.Exp.const 6#64],
          Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "c1")

def body678_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body678_9 : Prog (BitVec 64) :=
.seq body678_7 body678_8

def body678_10 : Prog (BitVec 64) :=
.seq body678_6 body678_9

def body678_11 : Prog (BitVec 64) :=
.dec ("base") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 384#64]]) body678_10

def body678_12 : Prog (BitVec 64) :=
.seq body678_5 body678_11

def body678_13 : Prog (BitVec 64) :=
.seq body678_3 body678_12

def body678_14 : Prog (BitVec 64) :=
.dec ("shift") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body678_13

def body678_15 : Prog (BitVec 64) :=
.decCall ("e0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "c0", Flapjack.Exp.var Flapjack.VarKind.local "n9"]) body678_14

def body678_16 : Prog (BitVec 64) :=
.decCall ("n9") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul_small") ([Flapjack.Exp.var Flapjack.VarKind.local "c1", Flapjack.Exp.const 9#64]) body678_15

def body678_17 : Prog (BitVec 64) :=
.dec ("c1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64],
      Flapjack.Exp.const 32#64])) body678_16

def body678_18 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64]])) body678_17

def body678_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 3#64)) body678_18

def body678_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body678_21 : Prog (BitVec 64) :=
.seq body678_19 body678_20

def body678_22 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body678_21

def body678_23 : Prog (BitVec 64) :=
.seq body678_0 body678_22

def body678_24 : Prog (BitVec 64) :=
.seq body678_3 body678_5

def body678_25 : Prog (BitVec 64) :=
.seq body678_6 body678_7

def body678_26 : Prog (BitVec 64) :=
.seq body678_25 body678_8

def body678_27 : Prog (BitVec 64) :=
.dec ("base") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 384#64]]) body678_26

def body678_28 : Prog (BitVec 64) :=
.seq body678_24 body678_27

def body678_29 : Prog (BitVec 64) :=
.dec ("shift") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body678_28

def body678_30 : Prog (BitVec 64) :=
.decCall ("e0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "c0", Flapjack.Exp.var Flapjack.VarKind.local "n9"]) body678_29

def body678_31 : Prog (BitVec 64) :=
.decCall ("n9") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul_small") ([Flapjack.Exp.var Flapjack.VarKind.local "c1", Flapjack.Exp.const 9#64]) body678_30

def body678_32 : Prog (BitVec 64) :=
.dec ("c1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64],
      Flapjack.Exp.const 32#64])) body678_31

def body678_33 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64]])) body678_32

def body678_34 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 3#64)) body678_33

def body678_35 : Prog (BitVec 64) :=
.seq body678_34 body678_20

def body678_36 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body678_35

def body678_37 : Prog (BitVec 64) :=
.seq body678_0 body678_36

def originalData678 : Decl (BitVec 64) :=
.function { name := "fq12_twist", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("g2", Flapjack.Shape.one)], body := body678_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData678 : Decl (BitVec 64) :=
.function { name := "fq12_twist", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("g2", Flapjack.Shape.one)], body := body678_37, returnShape := (Flapjack.Shape.one) }
def original678 := Pancake.PanLang.declToHOL originalData678
def simplified678 := Pancake.PanLang.declToHOL simplifiedData678
end InitECandidate.Proofs.FrontendStages.Declarations
