import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify701
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body717_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "lt")

def body717_1 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("bls_fp_lt_raw") ([Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15924587544893707605#64, Flapjack.Exp.const 1105070755758604287#64,
      Flapjack.Exp.const 12941209323636816658#64, Flapjack.Exp.const 12843041017062132063#64,
      Flapjack.Exp.const 2706051889235351147#64, Flapjack.Exp.const 936899308823769933#64],
  Flapjack.Exp.var Flapjack.VarKind.local "c"]) body717_0

def body717_2 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body717_1

def originalData717 : Decl (BitVec 64) :=
.function { name := "bls_fp_is_high", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body717_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData717 : Decl (BitVec 64) :=
.function { name := "bls_fp_is_high", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body717_2, returnShape := (Flapjack.Shape.one) }
def original717 := Pancake.PanLang.declToHOL originalData717
def simplified717 := Pancake.PanLang.declToHOL simplifiedData717
end InitECandidate.Proofs.FrontendStages.Declarations
