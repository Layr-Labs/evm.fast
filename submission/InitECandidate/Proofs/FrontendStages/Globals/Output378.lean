import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data378
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody378_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody378_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody378_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) globalBody378_0 globalBody378_1

def globalBody378_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody378_4 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"), Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody378_3

def globalBody378_5 : Prog (BitVec 64) :=
.seq globalBody378_2 globalBody378_4

def globalBody378_6 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody378_5

def globalData378 : Decl (BitVec 64) :=
.function { name := "stor_lookup", inline := false, exported := false, params := [("outer", Flapjack.Shape.one), ("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := globalBody378_6, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput378 := Pancake.PanLang.declToHOL globalData378
end InitECandidate.Proofs.FrontendStages.Declarations
