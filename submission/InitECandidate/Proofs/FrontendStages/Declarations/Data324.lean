import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify308
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body324_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.const 32#64]

def body324_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body324_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body324_3 : Prog (BitVec 64) :=
.seq body324_1 body324_2

def body324_4 : Prog (BitVec 64) :=
.seq body324_0 body324_3

def body324_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body324_4

def body324_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "dst"])

def body324_7 : Prog (BitVec 64) :=
.seq body324_5 body324_6

def body324_8 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body324_7

def body324_9 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "w"]) body324_8

def body324_10 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_list_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst",
  Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 33#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]]) body324_9

def body324_11 : Prog (BitVec 64) :=
.seq body324_0 body324_1

def body324_12 : Prog (BitVec 64) :=
.seq body324_11 body324_2

def body324_13 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body324_12

def body324_14 : Prog (BitVec 64) :=
.seq body324_13 body324_6

def body324_15 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body324_14

def body324_16 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "w"]) body324_15

def body324_17 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_list_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst",
  Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 33#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]]) body324_16

def originalData324 : Decl (BitVec 64) :=
.function { name := "tx_put_blob_hashes", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("buf", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body324_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData324 : Decl (BitVec 64) :=
.function { name := "tx_put_blob_hashes", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("buf", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body324_17, returnShape := (Flapjack.Shape.one) }
def original324 := Pancake.PanLang.declToHOL originalData324
def simplified324 := Pancake.PanLang.declToHOL simplifiedData324
end InitECandidate.Proofs.FrontendStages.Declarations
