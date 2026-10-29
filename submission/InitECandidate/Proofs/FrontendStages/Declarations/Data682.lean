import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify666
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body682_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ai"), none)) "fq_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ai", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body682_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "i"],
          Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "ai")

def body682_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body682_3 : Prog (BitVec 64) :=
.seq body682_1 body682_2

def body682_4 : Prog (BitVec 64) :=
.seq body682_0 body682_3

def body682_5 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "i"],
          Flapjack.Exp.const 32#64]])) body682_4

def body682_6 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "bi"]) body682_5

def body682_7 : Prog (BitVec 64) :=
.dec ("bi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]])) body682_6

def body682_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "db")
  (Flapjack.Exp.var Flapjack.VarKind.local "i")) body682_7

def body682_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body682_10 : Prog (BitVec 64) :=
.seq body682_8 body682_9

def body682_11 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body682_10

def body682_12 : Prog (BitVec 64) :=
.seq body682_0 body682_1

def body682_13 : Prog (BitVec 64) :=
.seq body682_12 body682_2

def body682_14 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "i"],
          Flapjack.Exp.const 32#64]])) body682_13

def body682_15 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "bi"]) body682_14

def body682_16 : Prog (BitVec 64) :=
.dec ("bi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]])) body682_15

def body682_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "db")
  (Flapjack.Exp.var Flapjack.VarKind.local "i")) body682_16

def body682_18 : Prog (BitVec 64) :=
.seq body682_17 body682_9

def body682_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body682_18

def originalData682 : Decl (BitVec 64) :=
.function { name := "fq_poly_submul", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one),
  ("q", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.one), ("db", Flapjack.Shape.one)], body := body682_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData682 : Decl (BitVec 64) :=
.function { name := "fq_poly_submul", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one),
  ("q", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.one), ("db", Flapjack.Shape.one)], body := body682_19, returnShape := (Flapjack.Shape.one) }
def original682 := Pancake.PanLang.declToHOL originalData682
def simplified682 := Pancake.PanLang.declToHOL simplifiedData682
end InitECandidate.Proofs.FrontendStages.Declarations
