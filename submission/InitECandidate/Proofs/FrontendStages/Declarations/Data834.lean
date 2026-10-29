import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify818
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body834_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "hl"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64],
    Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def body834_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def body834_2 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hl", Flapjack.Exp.var Flapjack.VarKind.local "payload"])

def body834_3 : Prog (BitVec 64) :=
.seq body834_1 body834_2

def body834_4 : Prog (BitVec 64) :=
.seq body834_0 body834_3

def body834_5 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload"]) body834_4

def body834_6 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "payload_end",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64]]) body834_5

def body834_7 : Prog (BitVec 64) :=
.seq body834_0 body834_1

def body834_8 : Prog (BitVec 64) :=
.seq body834_7 body834_2

def body834_9 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload"]) body834_8

def body834_10 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "payload_end",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64]]) body834_9

def originalData834 : Decl (BitVec 64) :=
.function { name := "rlp_finish_list", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("payload_end", Flapjack.Shape.one)], body := body834_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData834 : Decl (BitVec 64) :=
.function { name := "rlp_finish_list", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("payload_end", Flapjack.Shape.one)], body := body834_10, returnShape := (Flapjack.Shape.one) }
def original834 := Pancake.PanLang.declToHOL originalData834
def simplified834 := Pancake.PanLang.declToHOL simplifiedData834
end InitECandidate.Proofs.FrontendStages.Declarations
