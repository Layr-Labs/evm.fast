import InitECandidate.Proofs.StackAnalysis.RankFacts0
import InitECandidate.Proofs.StackAnalysis.RankFacts1
import InitECandidate.Proofs.StackAnalysis.RankFacts2
import InitECandidate.Proofs.StackAnalysis.RankFacts3
import InitECandidate.Proofs.StackAnalysis.RankFacts4
import InitECandidate.Proofs.StackAnalysis.RankFacts5
import InitECandidate.Proofs.StackAnalysis.RankFacts6
import InitECandidate.Proofs.StackAnalysis.RankFacts7
import InitECandidate.Proofs.StackAnalysis.RankFacts8
import InitECandidate.Proofs.StackAnalysis.RankFacts9
import InitECandidate.Proofs.StackAnalysis.RankFacts10
import InitECandidate.Proofs.StackAnalysis.RankFacts11
import InitECandidate.Proofs.StackAnalysis.RankFacts12
import InitECandidate.Proofs.StackAnalysis.RankFacts13
import InitECandidate.Proofs.StackAnalysis.RankFacts14
import InitECandidate.Proofs.StackAnalysis.RankFacts15
import InitECandidate.Proofs.StackAnalysis.RankFacts16
import InitECandidate.Proofs.StackAnalysis.RankFacts17
import InitECandidate.Proofs.StackAnalysis.RankFacts18
import InitECandidate.Proofs.StackAnalysis.RankFacts19
import InitECandidate.Proofs.StackAnalysis.RankFacts20
import InitECandidate.Proofs.StackAnalysis.RankFacts21
import InitECandidate.Proofs.StackAnalysis.RankFacts22
import InitECandidate.Proofs.StackAnalysis.RankFacts23
import InitECandidate.Proofs.StackAnalysis.RankFacts24
import InitECandidate.Proofs.StackAnalysis.RankFacts25
import InitECandidate.Proofs.StackAnalysis.Aggregate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
namespace InitECandidate.Proofs.StackAnalysis
open Flapjack Flapjack.Compiler.Backend
theorem frameMap_eq : sptFromAList frameEntries = certificateFrames := by cbv
theorem domains_eq :
  sptMap (fun (_ : Nat × WordLangProgHOL (BitVec 64)) => PUnit.unit) (sptFromAList slimEntries) =
  sptMap (fun (_ : Nat) => PUnit.unit) certificateFrames := by
  rw [sptMap_sptFromAList]
  cbv
theorem frames_small : allSmall certificateFrames = true := by cbv
theorem rank_entry : callRank 64 = 39 := by cbv
theorem allRanked : slimEntries.all (fun (i,_,p) => ranked callRank present i p) = true := by
  simp only [slimEntries, List.all_cons, List.all_nil, ranked64, ranked65, ranked66, ranked67, ranked68, ranked69, ranked70, ranked71, ranked72, ranked73, ranked74, ranked75, ranked76, ranked77, ranked78, ranked79, ranked80, ranked81, ranked82, ranked83, ranked84, ranked85, ranked86, ranked87, ranked88, ranked89, ranked90, ranked91, ranked92, ranked93, ranked94, ranked95, ranked96, ranked97, ranked98, ranked99, ranked100, ranked101, ranked102, ranked103, ranked104, ranked105, ranked106, ranked107, ranked108, ranked109, ranked110, ranked111, ranked112, ranked113, ranked114, ranked115, ranked116, ranked117, ranked118, ranked119, ranked120, ranked121, ranked122, ranked123, ranked124, ranked125, ranked126, ranked127, ranked128, ranked129, ranked130, ranked131, ranked132, ranked133, ranked134, ranked135, ranked136, ranked137, ranked138, ranked139, ranked140, ranked141, ranked142, ranked143, ranked144, ranked145, ranked146, ranked147, ranked148, ranked149, ranked150, ranked151, ranked152, ranked153, ranked154, ranked155, ranked156, ranked157, ranked158, ranked159, ranked160, ranked161, ranked162, ranked163, ranked164, ranked165, ranked166, ranked167, ranked168, ranked169, ranked170, ranked171, ranked172, ranked173, ranked174, ranked175, ranked176, ranked177, ranked178, ranked179, ranked180, ranked181, ranked182, ranked183, ranked184, ranked185, ranked186, ranked187, ranked188, ranked189, ranked190, ranked191, ranked192, ranked193, ranked194, ranked195, ranked196, ranked197, ranked198, ranked199, ranked200, ranked201, ranked202, ranked203, ranked204, ranked205, ranked206, ranked207, ranked208, ranked209, ranked210, ranked211, ranked212, ranked213, ranked214, ranked215, ranked216, ranked217, ranked218, ranked219, ranked220, ranked221, ranked222, ranked223, ranked224, ranked225, ranked226, ranked227, ranked228, ranked229, ranked230, ranked231, ranked232, ranked233, ranked234, ranked235, ranked236, ranked237, ranked238, ranked239, ranked240, ranked241, ranked242, ranked243, ranked244, ranked245, ranked246, ranked247, ranked248, ranked249, ranked250, ranked251, ranked252, ranked253, ranked254, ranked255, ranked256, ranked257, ranked258, ranked259, ranked260, ranked261, ranked262, ranked263, ranked264, ranked265, ranked266, ranked267, ranked268, ranked269, ranked270, ranked271, ranked272, ranked273, ranked274, ranked275, ranked276, ranked277, ranked278, ranked279, ranked280, ranked281, ranked282, ranked283, ranked284, ranked285, ranked286, ranked287, ranked288, ranked289, ranked290, ranked291, ranked292, ranked293, ranked294, ranked295, ranked296, ranked297, ranked298, ranked299, ranked300, ranked301, ranked302, ranked303, ranked304, ranked305, ranked306, ranked307, ranked308, ranked309, ranked310, ranked311, ranked312, ranked313, ranked314, ranked315, ranked316, ranked317, ranked318, ranked319, ranked320, ranked321, ranked322, ranked323, ranked324, ranked325, ranked326, ranked327, ranked328, ranked329, ranked330, ranked331, ranked332, ranked333, ranked334, ranked335, ranked336, ranked337, ranked338, ranked339, ranked340, ranked341, ranked342, ranked343, ranked344, ranked345, ranked346, ranked347, ranked348, ranked349, ranked350, ranked351, ranked352, ranked353, ranked354, ranked355, ranked356, ranked357, ranked358, ranked359, ranked360, ranked361, ranked362, ranked363, ranked364, ranked365, ranked366, ranked367, ranked368, ranked369, ranked370, ranked371, ranked372, ranked373, ranked374, ranked375, ranked376, ranked377, ranked378, ranked379, ranked380, ranked381, ranked382, ranked383, ranked384, ranked385, ranked386, ranked387, ranked388, ranked389, ranked390, ranked391, ranked392, ranked393, ranked394, ranked395, ranked396, ranked397, ranked398, ranked399, ranked400, ranked401, ranked402, ranked403, ranked404, ranked405, ranked406, ranked407, ranked408, ranked409, ranked410, ranked411, ranked412, ranked413, ranked414, ranked415, ranked416, ranked417, ranked418, ranked419, ranked420, ranked421, ranked422, ranked423, ranked424, ranked425, ranked426, ranked427, ranked428, ranked429, ranked430, ranked431, ranked432, ranked433, ranked434, ranked435, ranked436, ranked437, ranked438, ranked439, ranked440, ranked441, ranked442, ranked443, ranked444, ranked445, ranked446, ranked447, ranked448, ranked449, ranked450, ranked451, ranked452, ranked453, ranked454, ranked455, ranked456, ranked457, ranked458, ranked459, ranked460, ranked461, ranked462, ranked463, ranked464, ranked465, ranked466, ranked467, ranked468, ranked469, ranked470, ranked471, ranked472, ranked473, ranked474, ranked475, ranked476, ranked477, ranked478, ranked479, ranked480, ranked481, ranked482, ranked483, ranked484, ranked485, ranked486, ranked487, ranked488, ranked489, ranked490, ranked491, ranked492, ranked493, ranked494, ranked495, ranked496, ranked497, ranked498, ranked499, ranked500, ranked501, ranked502, ranked503, ranked504, ranked505, ranked506, ranked507, ranked508, ranked509, ranked510, ranked511, ranked512, ranked513, ranked514, ranked515, ranked516, ranked517, ranked518, ranked519, ranked520, ranked521, ranked522, ranked523, ranked524, ranked525, ranked526, ranked527, ranked528, ranked529, ranked530, ranked531, ranked532, ranked533, ranked534, ranked535, ranked536, ranked537, ranked538, ranked539, ranked540, ranked541, ranked542, ranked543, ranked544, ranked545, ranked546, ranked547, ranked548, ranked549, ranked550, ranked551, ranked552, ranked553, ranked554, ranked555, ranked556, ranked557, ranked558, ranked559, ranked560, ranked561, ranked562, ranked563, ranked564, ranked565, ranked566, ranked567, ranked568, ranked569, ranked570, ranked571, ranked572, ranked573, ranked574, ranked575, ranked576, ranked577, ranked578, ranked579, ranked580, ranked581, ranked582, ranked583, ranked584, ranked585, ranked586, ranked587, ranked588, ranked589, ranked590, ranked591, ranked592, ranked593, ranked594, ranked595, ranked596, ranked597, ranked598, ranked599, ranked600, ranked601, ranked602, ranked603, ranked604, ranked605, ranked606, ranked607, ranked608, ranked609, ranked610, ranked611, ranked612, ranked613, ranked614, ranked615, ranked616, ranked617, ranked618, ranked619, ranked620, ranked621, ranked622, ranked623, ranked624, ranked625, ranked626, ranked627, ranked628, ranked629, ranked630, ranked631, ranked632, ranked633, ranked634, ranked635, ranked636, ranked637, ranked638, ranked639, ranked640, ranked641, ranked642, ranked643, ranked644, ranked645, ranked646, ranked647, ranked648, ranked649, ranked650, ranked651, ranked652, ranked653, ranked654, ranked655, ranked656, ranked657, ranked658, ranked659, ranked660, ranked661, ranked662, ranked663, ranked664, ranked665, ranked666, ranked667, ranked668, ranked669, ranked670, ranked671, ranked672, ranked673, ranked674, ranked675, ranked676, ranked677, ranked678, ranked679, ranked680, ranked681, ranked682, ranked683, ranked684, ranked685, ranked686, ranked687, ranked688, ranked689, ranked690, ranked691, ranked692, ranked693, ranked694, ranked695, ranked696, ranked697, ranked698, ranked699, ranked700, ranked701, ranked702, ranked703, ranked704, ranked705, ranked706, ranked707, ranked708, ranked709, ranked710, ranked711, ranked712, ranked713, ranked714, ranked715, ranked716, ranked717, ranked718, ranked719, ranked720, ranked721, ranked722, ranked723, ranked724, ranked725, ranked726, ranked727, ranked728, ranked729, ranked730, ranked731, ranked732, ranked733, ranked734, ranked735, ranked736, ranked737, ranked738, ranked739, ranked740, ranked741, ranked742, ranked743, ranked744, ranked745, ranked746, ranked747, ranked748, ranked749, ranked750, ranked751, ranked752, ranked753, ranked754, ranked755, ranked756, ranked757, ranked758, ranked759, ranked760, ranked761, ranked762, ranked763, ranked764, ranked765, ranked766, ranked767, ranked768, ranked769, ranked770, ranked771, ranked772, ranked773, ranked774, ranked775, ranked776, ranked777, ranked778, ranked779, ranked780, ranked781, ranked782, ranked783, ranked784, ranked785, ranked786, ranked787, ranked788, ranked789, ranked790, ranked791, ranked792, ranked793, ranked794, ranked795, ranked796, ranked797, ranked798, ranked799, ranked800, ranked801, ranked802, ranked803, ranked804, ranked805, ranked806, ranked807, ranked808, ranked809, ranked810, ranked811, ranked812, ranked813, ranked814, ranked815, ranked816, ranked817, ranked818, ranked819, ranked820, ranked821, ranked822, ranked823, ranked824, ranked825, ranked826, ranked827, ranked828, ranked829, ranked830, ranked831, ranked832, ranked833, ranked834, ranked835, ranked836, ranked837, ranked838, ranked839, ranked840, ranked841, ranked842, ranked843, ranked844, ranked845, ranked846, ranked847, ranked848, ranked849, ranked850, ranked851, ranked852, ranked853, ranked854, ranked855, ranked856, ranked857, ranked858, ranked859, ranked860, ranked861, ranked862, ranked863, ranked864, ranked865, ranked866, ranked867, ranked868, ranked869, ranked870, ranked871, ranked872, ranked873, ranked874, ranked875, ranked876, ranked877, Bool.true_and]

theorem depth_bounded : bounded (StackDepthComputation.depthOfWordOutputs outputs) 7480 := by
  rw [depth_eq, frameMap_eq]
  have same : (fun k => (sptLookup k (sptFromAList slimEntries)).isSome) = present := by
    funext k
    have dom := congrArg (fun tree => (sptLookup k tree).isSome) domains_eq
    simpa only [sptLookup_sptMap, Option.isSome_map, present] using dom
  have good : ∀ i a p, sptLookup i (sptFromAList slimEntries) = some (a,p) →
      ranked callRank (fun k => (sptLookup k (sptFromAList slimEntries)).isSome) i p = true := by
    rw [same]
    exact ranked_lookup_of_all callRank present slimEntries allRanked
  have found : sptLookup 64 (sptFromAList slimEntries) = some (1,slim64) := by cbv
  have bound := fullCallGraphDepth_bounded callRank (sptFromAList slimEntries)
    certificateFrames good (frames_of_domain _ _ domains_eq frames_small) 64 1 slim64 found
  have entryLocation : BvlToBvi.initGlobalsLocation = 64 := by cbv
  simpa only [rank_entry, entryLocation] using bound
#print axioms depth_bounded
end InitECandidate.Proofs.StackAnalysis
