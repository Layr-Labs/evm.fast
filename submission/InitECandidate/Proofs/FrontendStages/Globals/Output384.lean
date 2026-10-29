import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data384
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody384_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody384_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody384_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) globalBody384_0 globalBody384_1

def globalBody384_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody384_0 globalBody384_1

def globalBody384_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hs") (Flapjack.Exp.const 0#64)) globalBody384_0 globalBody384_1

def globalBody384_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody384_6 : Prog (BitVec 64) :=
.seq globalBody384_4 globalBody384_5

def globalBody384_7 : Prog (BitVec 64) :=
.decCall ("hs") (Flapjack.Shape.one) ("account_has_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody384_6

def globalBody384_8 : Prog (BitVec 64) :=
.seq globalBody384_3 globalBody384_7

def globalBody384_9 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64]),
  Flapjack.Exp.const 32#64]) globalBody384_8

def globalBody384_10 : Prog (BitVec 64) :=
.seq globalBody384_2 globalBody384_9

def globalBody384_11 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody384_10

def globalData384 : Decl (BitVec 64) :=
.function { name := "account_deployable", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody384_11, returnShape := (Flapjack.Shape.one) }
def globalOutput384 := Pancake.PanLang.declToHOL globalData384
end InitECandidate.Proofs.FrontendStages.Declarations
