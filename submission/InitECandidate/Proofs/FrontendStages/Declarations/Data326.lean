import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify310
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body326_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.var Flapjack.VarKind.local "pl"])

def body326_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body326_2 : Prog (BitVec 64) :=
.seq body326_0 body326_1

def body326_3 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "pl"]) body326_2

def body326_4 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("auth_payload_len") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "recs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]]) body326_3

def body326_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body326_4

def body326_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "total")

def body326_7 : Prog (BitVec 64) :=
.seq body326_5 body326_6

def body326_8 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body326_7

def body326_9 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body326_8

def originalData326 : Decl (BitVec 64) :=
.function { name := "auth_list_payload_len", inline := false, exported := false, params := [("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body326_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData326 : Decl (BitVec 64) :=
.function { name := "auth_list_payload_len", inline := false, exported := false, params := [("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body326_9, returnShape := (Flapjack.Shape.one) }
def original326 := Pancake.PanLang.declToHOL originalData326
def simplified326 := Pancake.PanLang.declToHOL simplifiedData326
end InitECandidate.Proofs.FrontendStages.Declarations
