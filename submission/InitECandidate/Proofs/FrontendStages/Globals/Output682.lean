import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data682
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate666
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody682_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ai"), none)) "fq_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ai", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody682_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "i"],
          Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "ai")

def globalBody682_2 : Prog (BitVec 64) :=
.seq globalBody682_0 globalBody682_1

def globalBody682_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody682_4 : Prog (BitVec 64) :=
.seq globalBody682_2 globalBody682_3

def globalBody682_5 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "i"],
          Flapjack.Exp.const 32#64]])) globalBody682_4

def globalBody682_6 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "bi"]) globalBody682_5

def globalBody682_7 : Prog (BitVec 64) :=
.dec ("bi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]])) globalBody682_6

def globalBody682_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "db")
  (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody682_7

def globalBody682_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody682_10 : Prog (BitVec 64) :=
.seq globalBody682_8 globalBody682_9

def globalBody682_11 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody682_10

def globalData682 : Decl (BitVec 64) :=
.function { name := "fq_poly_submul", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one),
  ("q", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.one), ("db", Flapjack.Shape.one)], body := globalBody682_11, returnShape := (Flapjack.Shape.one) }
def globalOutput682 := Pancake.PanLang.declToHOL globalData682
end InitECandidate.Proofs.FrontendStages.Declarations
