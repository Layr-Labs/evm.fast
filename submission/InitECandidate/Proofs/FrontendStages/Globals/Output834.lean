import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data834
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate818
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody834_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "hl"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64],
    Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def globalBody834_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def globalBody834_2 : Prog (BitVec 64) :=
.seq globalBody834_0 globalBody834_1

def globalBody834_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hl", Flapjack.Exp.var Flapjack.VarKind.local "payload"])

def globalBody834_4 : Prog (BitVec 64) :=
.seq globalBody834_2 globalBody834_3

def globalBody834_5 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload"]) globalBody834_4

def globalBody834_6 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "payload_end",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64]]) globalBody834_5

def globalData834 : Decl (BitVec 64) :=
.function { name := "rlp_finish_list", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("payload_end", Flapjack.Shape.one)], body := globalBody834_6, returnShape := (Flapjack.Shape.one) }
def globalOutput834 := Pancake.PanLang.declToHOL globalData834
end InitECandidate.Proofs.FrontendStages.Declarations
