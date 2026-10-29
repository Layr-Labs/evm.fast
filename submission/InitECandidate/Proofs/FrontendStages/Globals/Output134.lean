import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data134
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody134_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody134_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody134_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "leaf") (Flapjack.Exp.const 0#64)) globalBody134_0 globalBody134_1

def globalBody134_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "eq")

def globalBody134_4 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen"]) globalBody134_3

def globalBody134_5 : Prog (BitVec 64) :=
.dec ("keys") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])) globalBody134_4

def globalBody134_6 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) globalBody134_5

def globalBody134_7 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) globalBody134_6

def globalBody134_8 : Prog (BitVec 64) :=
.seq globalBody134_2 globalBody134_7

def globalBody134_9 : Prog (BitVec 64) :=
.decCall ("leaf") (Flapjack.Shape.one) ("htab_find_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody134_8

def globalData134 : Decl (BitVec 64) :=
.function { name := "htab_has", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := globalBody134_9, returnShape := (Flapjack.Shape.one) }
def globalOutput134 := Pancake.PanLang.declToHOL globalData134
end InitECandidate.Proofs.FrontendStages.Declarations
