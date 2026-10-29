import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data721
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody721_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64]

def globalBody721_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_to_be48"
  [Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64]]

def globalBody721_2 : Prog (BitVec 64) :=
.seq globalBody721_0 globalBody721_1

def globalBody721_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody721_4 : Prog (BitVec 64) :=
.seq globalBody721_2 globalBody721_3

def globalBody721_5 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody721_4

def globalBody721_6 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody721_5

def globalData721 : Decl (BitVec 64) :=
.function { name := "bls_fp_encode64", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody721_6, returnShape := (Flapjack.Shape.one) }
def globalOutput721 := Pancake.PanLang.declToHOL globalData721
end InitECandidate.Proofs.FrontendStages.Declarations
