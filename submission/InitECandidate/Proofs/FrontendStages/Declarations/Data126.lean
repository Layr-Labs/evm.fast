import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify110
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body126_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body126_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body126_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "first_byte")
        (Flapjack.Exp.const 128#64))]) body126_0 body126_1

def body126_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def body126_4 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("rlp_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body126_3

def body126_5 : Prog (BitVec 64) :=
.seq body126_2 body126_4

def originalData126 : Decl (BitVec 64) :=
.function { name := "rlp_bytes_encoded_len", inline := false, exported := false, params := [("first_byte", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body126_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData126 : Decl (BitVec 64) :=
.function { name := "rlp_bytes_encoded_len", inline := false, exported := false, params := [("first_byte", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body126_5, returnShape := (Flapjack.Shape.one) }
def original126 := Pancake.PanLang.declToHOL originalData126
def simplified126 := Pancake.PanLang.declToHOL simplifiedData126
end InitECandidate.Proofs.FrontendStages.Declarations
