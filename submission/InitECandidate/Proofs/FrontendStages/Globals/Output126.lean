import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data126
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate110
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody126_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody126_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody126_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "first_byte")
        (Flapjack.Exp.const 128#64))]) globalBody126_0 globalBody126_1

def globalBody126_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def globalBody126_4 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("rlp_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody126_3

def globalBody126_5 : Prog (BitVec 64) :=
.seq globalBody126_2 globalBody126_4

def globalData126 : Decl (BitVec 64) :=
.function { name := "rlp_bytes_encoded_len", inline := false, exported := false, params := [("first_byte", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody126_5, returnShape := (Flapjack.Shape.one) }
def globalOutput126 := Pancake.PanLang.declToHOL globalData126
end InitECandidate.Proofs.FrontendStages.Declarations
