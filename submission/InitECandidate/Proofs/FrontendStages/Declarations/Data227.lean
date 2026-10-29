import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify211
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body227_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 8#64)

def body227_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body227_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) body227_0 body227_1

def body227_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")])

def body227_4 : Prog (BitVec 64) :=
.seq body227_2 body227_3

def body227_5 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body227_4

def originalData227 : Decl (BitVec 64) :=
.function { name := "hdr_raw_field", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one)], body := body227_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData227 : Decl (BitVec 64) :=
.function { name := "hdr_raw_field", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one)], body := body227_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original227 := Pancake.PanLang.declToHOL originalData227
def simplified227 := Pancake.PanLang.declToHOL simplifiedData227
end InitECandidate.Proofs.FrontendStages.Declarations
