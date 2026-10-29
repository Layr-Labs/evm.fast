import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify705
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body721_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64]

def body721_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_to_be48"
  [Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64]]

def body721_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body721_3 : Prog (BitVec 64) :=
.seq body721_1 body721_2

def body721_4 : Prog (BitVec 64) :=
.seq body721_0 body721_3

def body721_5 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body721_4

def body721_6 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) body721_5

def body721_7 : Prog (BitVec 64) :=
.seq body721_0 body721_1

def body721_8 : Prog (BitVec 64) :=
.seq body721_7 body721_2

def body721_9 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body721_8

def body721_10 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) body721_9

def originalData721 : Decl (BitVec 64) :=
.function { name := "bls_fp_encode64", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body721_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData721 : Decl (BitVec 64) :=
.function { name := "bls_fp_encode64", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body721_10, returnShape := (Flapjack.Shape.one) }
def original721 := Pancake.PanLang.declToHOL originalData721
def simplified721 := Pancake.PanLang.declToHOL simplifiedData721
end InitECandidate.Proofs.FrontendStages.Declarations
