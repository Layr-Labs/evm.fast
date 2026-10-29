import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data221
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody221_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 5#64)

def globalBody221_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody221_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64)
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"))) globalBody221_0 globalBody221_1

def globalBody221_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody221_4 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f")]) globalBody221_3

def globalBody221_5 : Prog (BitVec 64) :=
.seq globalBody221_2 globalBody221_4

def globalBody221_6 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "i",
  Flapjack.Exp.var Flapjack.VarKind.local "maxb"]) globalBody221_5

def globalData221 : Decl (BitVec 64) :=
.function { name := "hdr_u256_field", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("maxb", Flapjack.Shape.one)], body := globalBody221_6, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput221 := Pancake.PanLang.declToHOL globalData221
end InitECandidate.Proofs.FrontendStages.Declarations
