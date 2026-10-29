import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify209
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body225_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 5#64)

def body225_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body225_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64)
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"))) body225_0 body225_1

def body225_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body225_4 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f")]) body225_3

def body225_5 : Prog (BitVec 64) :=
.seq body225_2 body225_4

def body225_6 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "i",
  Flapjack.Exp.var Flapjack.VarKind.local "maxb"]) body225_5

def originalData225 : Decl (BitVec 64) :=
.function { name := "hdr_u256_field", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("maxb", Flapjack.Shape.one)], body := body225_6, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData225 : Decl (BitVec 64) :=
.function { name := "hdr_u256_field", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("maxb", Flapjack.Shape.one)], body := body225_6, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original225 := Pancake.PanLang.declToHOL originalData225
def simplified225 := Pancake.PanLang.declToHOL simplifiedData225
end InitECandidate.Proofs.FrontendStages.Declarations
