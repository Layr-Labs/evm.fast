import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data124
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate108
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody124_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 128#64)

def globalBody124_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody124_2 : Prog (BitVec 64) :=
.seq globalBody124_0 globalBody124_1

def globalBody124_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody124_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 0#64)) globalBody124_2 globalBody124_3

def globalBody124_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody124_6 : Prog (BitVec 64) :=
.seq globalBody124_5 globalBody124_1

def globalBody124_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 128#64)) globalBody124_6 globalBody124_3

def globalBody124_8 : Prog (BitVec 64) :=
.seq globalBody124_4 globalBody124_7

def globalBody124_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def globalBody124_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_put_be"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "ll"]

def globalBody124_11 : Prog (BitVec 64) :=
.seq globalBody124_9 globalBody124_10

def globalBody124_12 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def globalBody124_13 : Prog (BitVec 64) :=
.seq globalBody124_11 globalBody124_12

def globalBody124_14 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) globalBody124_13

def globalBody124_15 : Prog (BitVec 64) :=
.seq globalBody124_8 globalBody124_14

def globalData124 : Decl (BitVec 64) :=
.function { name := "rlp_encode_word", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("w", Flapjack.Shape.one)], body := globalBody124_15, returnShape := (Flapjack.Shape.one) }
def globalOutput124 := Pancake.PanLang.declToHOL globalData124
end InitECandidate.Proofs.FrontendStages.Declarations
