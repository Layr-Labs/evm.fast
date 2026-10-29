import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify107
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body123_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.var Flapjack.VarKind.local "b")

def body123_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body123_2 : Prog (BitVec 64) :=
.seq body123_0 body123_1

def body123_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body123_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 128#64)) body123_2 body123_3

def body123_5 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "src")) body123_4

def body123_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body123_5 body123_3

def body123_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "h"],
    Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body123_8 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def body123_9 : Prog (BitVec 64) :=
.seq body123_7 body123_8

def body123_10 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("rlp_write_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]) body123_9

def body123_11 : Prog (BitVec 64) :=
.seq body123_6 body123_10

def originalData123 : Decl (BitVec 64) :=
.function { name := "rlp_encode_bytes", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body123_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData123 : Decl (BitVec 64) :=
.function { name := "rlp_encode_bytes", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body123_11, returnShape := (Flapjack.Shape.one) }
def original123 := Pancake.PanLang.declToHOL originalData123
def simplified123 := Pancake.PanLang.declToHOL simplifiedData123
end InitECandidate.Proofs.FrontendStages.Declarations
