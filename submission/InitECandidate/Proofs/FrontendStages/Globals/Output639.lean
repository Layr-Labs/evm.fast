import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data639
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate623
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody639_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pt") (Flapjack.Exp.var Flapjack.VarKind.local "x")

def globalBody639_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def globalBody639_2 : Prog (BitVec 64) :=
.seq globalBody639_0 globalBody639_1

def globalBody639_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody639_4 : Prog (BitVec 64) :=
.seq globalBody639_2 globalBody639_3

def globalBody639_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody639_6 : Prog (BitVec 64) :=
.seq globalBody639_4 globalBody639_5

def globalData639 : Decl (BitVec 64) :=
.function { name := "p256_set_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one),
  ("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody639_6, returnShape := (Flapjack.Shape.one) }
def globalOutput639 := Pancake.PanLang.declToHOL globalData639
end InitECandidate.Proofs.FrontendStages.Declarations
