import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify108
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body124_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 128#64)

def body124_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body124_2 : Prog (BitVec 64) :=
.seq body124_0 body124_1

def body124_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body124_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 0#64)) body124_2 body124_3

def body124_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body124_6 : Prog (BitVec 64) :=
.seq body124_5 body124_1

def body124_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 128#64)) body124_6 body124_3

def body124_8 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def body124_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_put_be"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "ll"]

def body124_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def body124_11 : Prog (BitVec 64) :=
.seq body124_9 body124_10

def body124_12 : Prog (BitVec 64) :=
.seq body124_8 body124_11

def body124_13 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) body124_12

def body124_14 : Prog (BitVec 64) :=
.seq body124_7 body124_13

def body124_15 : Prog (BitVec 64) :=
.seq body124_4 body124_14

def body124_16 : Prog (BitVec 64) :=
.seq body124_4 body124_7

def body124_17 : Prog (BitVec 64) :=
.seq body124_8 body124_9

def body124_18 : Prog (BitVec 64) :=
.seq body124_17 body124_10

def body124_19 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) body124_18

def body124_20 : Prog (BitVec 64) :=
.seq body124_16 body124_19

def originalData124 : Decl (BitVec 64) :=
.function { name := "rlp_encode_word", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("w", Flapjack.Shape.one)], body := body124_15, returnShape := (Flapjack.Shape.one) }
def simplifiedData124 : Decl (BitVec 64) :=
.function { name := "rlp_encode_word", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("w", Flapjack.Shape.one)], body := body124_20, returnShape := (Flapjack.Shape.one) }
def original124 := Pancake.PanLang.declToHOL originalData124
def simplified124 := Pancake.PanLang.declToHOL simplifiedData124
end InitECandidate.Proofs.FrontendStages.Declarations
