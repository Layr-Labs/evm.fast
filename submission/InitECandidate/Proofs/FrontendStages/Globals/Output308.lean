import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data308
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody308_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "tx"),
      some
        ("RlpErr", "rc",
          Flapjack.Prog.raise "TxErr"
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.const 100#64, Flapjack.Exp.var Flapjack.VarKind.local "rc"]))))
  "decode_transaction_rlp" [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]

def globalBody308_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "tx")

def globalBody308_2 : Prog (BitVec 64) :=
.seq globalBody308_0 globalBody308_1

def globalBody308_3 : Prog (BitVec 64) :=
.dec ("rc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody308_2

def globalBody308_4 : Prog (BitVec 64) :=
.dec ("tx") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody308_3

def globalData308 : Decl (BitVec 64) :=
.function { name := "decode_transaction", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody308_4, returnShape := (Flapjack.Shape.one) }
def globalOutput308 := Pancake.PanLang.declToHOL globalData308
end InitECandidate.Proofs.FrontendStages.Declarations
